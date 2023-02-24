import 'package:flutter/material.dart';
import 'package:letstalk_app/pages/login_page.dart';
import 'package:letstalk_app/pages/creatorProfile_page.dart';
import 'package:letstalk_app/pages/userProfile_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LetsTalk App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserProfilePage(),
    );
  }
}
