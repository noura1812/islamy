import 'package:flutter/material.dart';
import 'package:islamy/mytheme.dart';
import 'package:islamy/screens/myhomepage.dart';
import 'package:islamy/screens/suraContent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: MyThemeData.darkTheme,
      theme: MyThemeData.lightTheme,
      initialRoute: MyHomePage.routname,
      routes: {
        MyHomePage.routname: (context) => MyHomePage(),
        SuraContent.routname: (context) => SuraContent()
      },
      home: MyHomePage(),
    );
  }
}
