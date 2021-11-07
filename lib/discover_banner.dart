import 'package:flutter/material.dart';
import 'package:gunfight/default_tile.dart';

class DiscoverPageBanner extends StatelessWidget {
  const DiscoverPageBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTile(
      text: 'Banner',
      color: Colors.green,
    );
  }
}
