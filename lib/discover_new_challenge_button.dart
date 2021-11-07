import 'package:flutter/material.dart';

import 'default_tile.dart';

class DiscoverNewChallengeButton extends StatelessWidget {
  const DiscoverNewChallengeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTile(
      padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
      text: 'New Challenge Button',
      color: Colors.blue,
    );
  }
}
