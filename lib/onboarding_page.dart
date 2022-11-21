import 'package:flutter/material.dart';
import 'package:kaaraakoo/screen/switch_page.dart';
import 'package:kaaraakoo/variable/user_info.dart';
import 'package:kaaraakoo/widget/introduction.dart';
import 'package:kaaraakoo/widget/introscreenonboarding.dart';

class onboardingPage extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'Title',
      subTitle: 'Text to describe title',
      imageUrl: 'asset/sms.png',
    ),
    Introduction(
      title: 'Title',
      subTitle: 'Text to describe title',
      imageUrl: 'asset/sms.png',
    ),
    Introduction(
      title: 'Title',
      subTitle: 'Text to describe title',
      imageUrl: 'asset/sms.png',
    ),
    Introduction(
      title: 'Title',
      subTitle: 'Text to describe title',
      imageUrl: 'asset/sms.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      backgroudColor: const Color(0xFFE7E1DB),
      foregroundColor: const Color(0xFFF5564E),
      skipTextStyle: const TextStyle(
        color: Color(0xFFF5564E),
        fontSize: 16,
      ),
      onTapSkipButton: () {
        Navigator.of(context).pop();
        show = false;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const switchPage(),
          ), //MaterialPageRoute
        );
      },
    );
  }
}