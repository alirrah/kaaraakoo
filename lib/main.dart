import 'package:flutter/material.dart';
import 'package:kaaraakoo/screen/switch_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kaaraakoo',
      theme: ThemeData(
        //TODO -> add theme
      ),
      debugShowCheckedModeBanner: false,
      home: const switchPage(),
    );
  }
}
