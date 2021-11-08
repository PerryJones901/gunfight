import 'package:flutter/material.dart';
import 'package:gunfight/default_tile.dart';
import 'package:gunfight/registration_page.dart';

class DebugPage extends StatefulWidget {
  const DebugPage({Key? key}) : super(key: key);

  @override
  DebugPageState createState() => DebugPageState();
}

class DebugPageState extends State<DebugPage> {
  final List<Widget> _debugPages = <Widget>[
    const RegistrationPage()
  ];

  void _pushPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: Text('Registration')),
          body: _debugPages[0],
        );
      }),
    );
  }

  List<Widget> _getItems() {
    return <Widget>[
      InkWell(
        child: const DefaultTile(
          text: 'Start Registration',
        ),
        onTap: () {
        _pushPage(context);
        }
      ),
      const DefaultTile(
        text: 'Existing Challenge',
      ),
      const DefaultTile(
        text: 'Post Wager',
      ),
      const DefaultTile(
        text: 'Post Results (No dispute)',
      ),
      const DefaultTile(
        text: 'Post Results (Dispute)',
      ),
    ];
  }

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: _getItems().length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: _getItems()[index]
        );
      }
    );
  }
}
