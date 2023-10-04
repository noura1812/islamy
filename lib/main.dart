import 'package:flutter/material.dart';
import 'package:islamy/provider/Provider.dart';
import 'package:islamy/mytheme.dart';
import 'package:islamy/screens/hadethContent.dart';
import 'package:islamy/screens/myhomepage.dart';
import 'package:islamy/screens/suraContent.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var provider = MyProvider();
  await provider.loadTheme();
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => provider, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line

        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale(provider.language),
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'),
      ],
      debugShowCheckedModeBanner: false,
      darkTheme: MyThemeData.darkTheme,
      theme: MyThemeData.lightTheme,
      themeMode: provider.theme,
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
