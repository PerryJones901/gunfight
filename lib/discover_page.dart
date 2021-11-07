import 'package:flutter/material.dart';

import 'discover_banner.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  DiscoverPageState createState() => DiscoverPageState();
}

class DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Builder(
          builder: (context) {
            return const DiscoverPageBanner();
          }
        ),
      ],
    );
  }
}