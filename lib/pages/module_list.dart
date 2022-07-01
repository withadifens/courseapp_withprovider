import 'package:courseapp_withprovider/provider/done_module_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class ModuleList extends StatelessWidget {
  const ModuleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List moduleItem = [
      'Modul 1',
      'Modul 2',
      'Modul 3',
      'Modul 4',
      'Modul 5',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('My Online Course Progress'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/doneModule');
            },
            icon: Icon(Icons.bookmarks_rounded),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: moduleItem.length,
        itemBuilder: (context, index) {
          return Consumer<DoneModuleProvider>(
            builder: (context, value, child) => ListTile(
              title: Text(moduleItem[index]),
              trailing: value.doneModuleList.contains(moduleItem[index])
                  ? Icon(Icons.done_rounded)
                  : Icon(Icons.menu_book_rounded),
              onTap: () => value.doneModuleList.contains(moduleItem[index])
                  ? value.removeFromBookmark(moduleItem[index])
                  : value.addToBookmark(moduleItem[index]),
            ),
          );
        },
      ),
    );
  }
}
