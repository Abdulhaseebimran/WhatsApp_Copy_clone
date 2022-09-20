import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutterr/constants/colors.dart';
import 'package:whatsapp_clone_flutterr/responsive/responsive_layout.dart';
import 'package:whatsapp_clone_flutterr/screens/mobile_screen_layout.dart';
import 'package:whatsapp_clone_flutterr/screens/web_screens_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wathsapp clone flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        backgroundColor: backgroundColor,
      ),
     home: const ResponsiveLayout(mobileScreenLayout: MobileScreensLayout(), 
     webScreenLayout: WebScreensLayout()),
    );
  }
}

