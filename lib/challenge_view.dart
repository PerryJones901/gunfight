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
        padding: EdgeInsets.fromLTRB(10, 50, 10, 50),
        text: 'CHALLENGE INFO',
      ),
      const DefaultTile(
        text: 'PLAYERS',
        isAllCornersRounded: true,
      ),
      const DefaultTile(
        text: 'CHALLENGE',
        color: Colors.black,
        style: TextStyle(color: Colors.white, fontSize: 30),
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
