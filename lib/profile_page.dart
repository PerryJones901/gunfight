import 'package:flutter/material.dart';
import 'package:gunfight/default_tile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  List<Widget> _getItems() {
    return <Widget>[
      const CircleAvatar(
        backgroundColor: Colors.grey,
        child: Text('PIC', style: TextStyle(fontSize: 30)), 
        radius: 60,
      ),
      const DefaultTile(
        text: 'BIO',
      ),
      const DefaultTile(
        text: 'MATCHES, WINS',
      ),
      const DefaultTile(
        text: 'CHALLENGE',
      ),
      const DefaultTile(
        text: 'PAST GAMES',
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 50),
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
