import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy/models/suraModel.dart';

class SuraContent extends StatefulWidget {
  static const String routname = 'suracontant';

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  List<String> lins = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    lins.isEmpty ? loadFile(args.index) : null;
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
          body: Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(.4)),
            child: Column(children: [
              Text(
                'سورة ${args.name}',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 25),
              ),
              Divider(
                thickness: 1,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        '${lins[index]}(${index + 1})',
                        style: GoogleFonts.elMessiri(
                            fontSize: 20, fontWeight: FontWeight.normal),
                      ),
                    );
                  },
                  itemCount: lins.length,
                ),
              )
            ]),
          ),
        ),
      ],
    );
  }

  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString('assets/suras/${index + 1}.txt');
    sura = sura.split('\n').where((s) => s.trim().isNotEmpty).join('\n');
    lins = sura.split('\n');
    setState(() {});
  }
}
