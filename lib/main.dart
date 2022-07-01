import 'package:courseapp_withprovider/pages/done_module.dart';
import 'package:courseapp_withprovider/pages/module_list.dart';
import 'package:courseapp_withprovider/provider/done_module_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DoneModuleProvider>(
      create: (context) => DoneModuleProvider(),
      builder: (context, m) => MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        initialRoute: '/',
        routes: {
          '/': (context) => ModuleList(),
          '/doneModule': (context) => DoneModule(),
        },
      ),
    );
  }
}
