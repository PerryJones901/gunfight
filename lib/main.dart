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
      title: 'Gun Fight Demo',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const BaseScaffold()
    );
  }
}
