import 'package:flutter/material.dart';
import 'package:islamy/provider/Provider.dart';
import 'package:islamy/tabs/qurantab.dart';
import 'package:islamy/tabs/radio.dart';
import 'package:islamy/tabs/ahadeth.dart';
import 'package:islamy/tabs/settingstab.dart';
import 'package:islamy/tabs/tasbeeh.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  static const String routname = 'myhome';

  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 4;
  List<Widget> tabs = [
    Settings(),
    RadioTab(),
    Tasbeeh(),
    Ahadeth(),
    QuranTab(),
  ];
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            child: Image.asset(
              Theme.of(context).colorScheme.brightness == Brightness.light
                  ? 'assets/images/bg3.png'
                  : 'assets/images/dark bg.png',
              fit: BoxFit.fill,
            )),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          body: tabs[index],
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                index = value;
                setState(() {});
              },
              currentIndex: index,
              items: [
                BottomNavigationBarItem(
                    icon: const Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings,
                    backgroundColor: Theme.of(context).primaryColor),
                BottomNavigationBarItem(
                    icon:
                        const ImageIcon(AssetImage('assets/images/radio.png')),
                    label: AppLocalizations.of(context)!.radio,
                    backgroundColor: Theme.of(context).primaryColor),
                BottomNavigationBarItem(
                    icon:
                        const ImageIcon(AssetImage('assets/images/sebha.png')),
                    label: AppLocalizations.of(context)!.sebha,
                    backgroundColor: Theme.of(context).primaryColor),
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage(
                        'assets/images/quran-quran-svgrepo-com.png')),
                    label: AppLocalizations.of(context)!.ahadeth,
                    backgroundColor: Theme.of(context).primaryColor),
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                        AssetImage('assets/images/moshaf_blue.png')),
                    label: AppLocalizations.of(context)!.quran,
                    backgroundColor: Theme.of(context).primaryColor),
              ]),
        ),
      ],
    );
  }
}
