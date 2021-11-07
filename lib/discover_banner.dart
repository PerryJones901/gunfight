import 'package:flutter/material.dart';

class DiscoverPageBanner extends StatelessWidget {
  const DiscoverPageBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      width: double.infinity,
      child: const Center(
        child: Text(
          'Banner',
          style: TextStyle(fontSize: 30)
        )
      )
    );
  }
}
