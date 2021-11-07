import 'package:flutter/material.dart';

class DiscoverNewChallengeButton extends StatelessWidget {
  const DiscoverNewChallengeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      width: double.infinity,
      child: const Center(
        child: Text(
          'New Challenge Button',
          style: TextStyle(fontSize: 30)
        )
      )
    );
  }
}