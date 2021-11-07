import 'package:flutter/material.dart';
import 'package:gunfight/default_tile.dart';

class ChallengeView extends StatefulWidget {
  const ChallengeView({Key? key}) : super(key: key);

  @override
  ChallengeViewState createState() => ChallengeViewState();
}

class ChallengeViewState extends State<ChallengeView> {
  List<Widget> _getItems() {
    return <Widget>[
      const DefaultTile(
        text: 'CHALLENGE INFO',
        color: Colors.grey,
        style: TextStyle(fontSize: 60),
      ),
      const DefaultTile(
        text: 'PLAYERS',
        color: Colors.grey,
        isAllCornersRounded: true
      ),
      const DefaultTile(
        text: 'CHALLENGE',
        color: Colors.black,
        style: TextStyle(color: Colors.white, fontSize: 40),
      ),
      IconButton(
        icon: const Icon(Icons.ios_share),
        onPressed: () {},
        iconSize: 40,
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
