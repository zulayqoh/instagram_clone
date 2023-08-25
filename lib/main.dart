import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive/desktop.dart';
import 'package:instagram_clone/responsive/mobile.dart';
import 'package:instagram_clone/responsive/responsive_screen.dart';
import 'package:instagram_clone/responsive/tablet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black
      ),
      home: const ResponsiveScreen(mobile: Mobile(), desktop: Desktop(), tablet: Tablet(),),
    );
  }
}

