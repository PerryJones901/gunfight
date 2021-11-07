import 'package:flutter/material.dart';

import 'discover_banner.dart';
import 'discover_challenge_view.dart';
import 'discover_new_challenge_button.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  DiscoverPageState createState() => DiscoverPageState();
}

class DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context){
    return ListView(
      children: const [
        Padding(
          padding: EdgeInsets.all(10),
          child: DiscoverPageBanner()
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: DiscoverNewChallengeButton()
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: DiscoverChallengeView()
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: DiscoverChallengeView()
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: DiscoverChallengeView()
        ),
      ]
    );
  }
}