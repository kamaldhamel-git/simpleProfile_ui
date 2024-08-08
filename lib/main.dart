import 'package:flutter/material.dart';
import 'package:profile_demo/profile/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // To Remove Debug Watermark
      title: 'News App',
      home: ProfilePage(),
    );
  }
}
