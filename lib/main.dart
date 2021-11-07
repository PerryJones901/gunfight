import 'package:flutter/material.dart';
import 'package:gunfight/base_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Word Pair Generator Demo',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: BaseScaffold()
    );
  }
}
