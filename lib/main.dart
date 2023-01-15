import 'package:bwa_flutter_challenge/screens/home_page.dart';
import 'package:bwa_flutter_challenge/screens/search_page.dart';
import 'package:bwa_flutter_challenge/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.appTheme,
      home: HomePage(),
    );
  }
}
