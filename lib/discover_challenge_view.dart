import 'package:flutter/material.dart';

import 'challenge_view.dart';

class DiscoverChallengeView extends StatelessWidget {
  const DiscoverChallengeView({Key? key}) : super(key: key);

  Widget _getText(String text, {double size = 20, bool isBold = false}) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: size,
        fontWeight: isBold ? FontWeight.bold : null
      )
    );
  }

  void _pushChallenge(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: Text('Challenge View')),
          body: const ChallengeView(),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        width: double.infinity,
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _getText('LOBBY NAME'),
                  _getText('£20', size: 40, isBold: true),
                ],
              ),
              Container(height:40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _getText('GAME'),
                  _getText('Open slots'),
                ],
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        _pushChallenge(context);
      },
    );
  }
}