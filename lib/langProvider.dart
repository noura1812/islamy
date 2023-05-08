import 'package:flutter/material.dart';

class LangProvider with ChangeNotifier {
  String Language = 'en';

  chaneLanguage(String lang) {
    Language = lang;
    notifyListeners();
  }
}
