import 'package:flutter/material.dart';
import 'package:kaaraakoo/screen/menu_page.dart';
import 'package:kaaraakoo/onboarding_page.dart';
import 'package:kaaraakoo/variable/user_info.dart';

class switchPage extends StatelessWidget {
  const switchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return show ? onboardingPage() : const menuPage();
  }
}
