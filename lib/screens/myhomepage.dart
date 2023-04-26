import 'package:flutter/material.dart';
import 'package:islamy/tabs/qurantab.dart';
import 'package:islamy/tabs/radio.dart';
import 'package:islamy/tabs/ahadeth.dart';
import 'package:islamy/tabs/tasbeeh.dart';

class MyHomePage extends StatefulWidget {
  static const String routname = 'myhome';

  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 3;
  List<Widget> tabs = [RadioTab(), Tasbeeh(), Ahadeth(), QuranTab()];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/images/bg3.png',
              fit: BoxFit.fill,
            )),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'إسلامي',
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
                    icon:
                        const ImageIcon(AssetImage('assets/images/radio.png')),
                    label: 'الراديو',
                    backgroundColor: Theme.of(context).primaryColor),
                BottomNavigationBarItem(
                    icon:
                        const ImageIcon(AssetImage('assets/images/sebha.png')),
                    label: 'التسبيح',
                    backgroundColor: Theme.of(context).primaryColor),
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage(
                        'assets/images/quran-quran-svgrepo-com.png')),
                    label: 'الاحاديث',
                    backgroundColor: Theme.of(context).primaryColor),
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                        AssetImage('assets/images/moshaf_blue.png')),
                    label: 'القران',
                    backgroundColor: Theme.of(context).primaryColor),
              ]),
        ),
      ],
    );
  }
}
