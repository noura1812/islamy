import 'package:flutter/material.dart';

class myProvider with ChangeNotifier {
  String Language = 'en';
  String Theme = 'light';
  changeTeme(String ThemeData) {
    Theme = ThemeData;
    notifyListeners();
  }

  chaneLanguage(String lang) {
    Language = lang;
    notifyListeners();
  }
}
