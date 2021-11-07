import 'package:flutter/material.dart';

class DiscoverPageBanner extends StatelessWidget {
  const DiscoverPageBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      width: double.infinity,
      color: Colors.green,
      child: const Center(
        child: Text(
          'Banner',
          style: TextStyle(fontSize: 30)
        )
      )
    );
  }
}