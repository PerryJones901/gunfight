import 'package:flutter/material.dart';
import 'package:gunfight/default_tile.dart';

import 'discover_banner.dart';
import 'discover_challenge_view.dart';
import 'discover_new_challenge_button.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  DiscoverPageState createState() => DiscoverPageState();
}

class DiscoverPageState extends State<DiscoverPage> {
  List<Widget> _getItems() {
    return <Widget>[
      const DiscoverPageBanner(),
      const DiscoverNewChallengeButton(),
      const DiscoverChallengeView(),
      const DiscoverChallengeView(),
      const DiscoverChallengeView()
    ];
  }

  @override
  Widget build(BuildContext context) {
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