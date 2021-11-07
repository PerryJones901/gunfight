import 'package:flutter/material.dart';
import 'package:gunfight/default_tile.dart';

class AddChallengePage extends StatefulWidget {
  const AddChallengePage({Key? key}) : super(key: key);

  @override
  AddChallengePageState createState() => AddChallengePageState();
}

class AddChallengePageState extends State<AddChallengePage> {
  List<Widget> _getItems() {
    return <Widget>[
      const DefaultTile(
        text: 'LOBBY NAME',
      ),
      const DefaultTile(
        text: 'GAME',
      ),
      const DefaultTile(
        text: 'WAGER',
      ),
      const DefaultTile(
        text: 'LOBBY SIZE (DROPBOX)',
      ),
      const DefaultTile(
        text: 'PUBLIC OR PRIVATE',
      ),
      const DefaultTile(
        text: 'SUBMIT',
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
