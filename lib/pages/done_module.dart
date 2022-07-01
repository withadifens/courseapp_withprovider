import 'package:courseapp_withprovider/provider/done_module_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class DoneModule extends StatelessWidget {
  const DoneModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Bookmark'),
      ),
      body: Consumer<DoneModuleProvider>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.doneModuleList.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(value.doneModuleList.elementAt(index)),
          ),
        ),
      ),
    );
  }
}
