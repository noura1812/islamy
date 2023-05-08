import 'package:flutter/material.dart';
import 'package:islamy/langProvider.dart';
import 'package:islamy/mytheme.dart';
import 'package:islamy/screens/hadethContent.dart';
import 'package:islamy/screens/myhomepage.dart';
import 'package:islamy/screens/suraContent.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => LangProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LangProvider>(context);
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line

        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale(provider.Language),
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'),
      ],
      debugShowCheckedModeBanner: false,
      darkTheme: MyThemeData.darkTheme,
      theme: MyThemeData.lightTheme,
      initialRoute: MyHomePage.routname,
      routes: {
        MyHomePage.routname: (context) => MyHomePage(),
        SuraContent.routname: (context) => SuraContent(),
        Hadethcontent.routname: (context) => Hadethcontent()
      },
      home: const MyHomePage(),
    );
  }
}
