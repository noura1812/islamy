import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Tasbeeh extends StatefulWidget {
  @override
  State<Tasbeeh> createState() => _TasbeehState();
}

class _TasbeehState extends State<Tasbeeh> {
  List<String> doaa = [
    'سبحان الله',
    'الحمد لله ',
    'لا اله الا الله',
    'الله اكبر'
  ];

  int index = 0;

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset('assets/images/sebhaphoto.png'),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              AppLocalizations.of(context)!.tasbeeh_count,
              style: GoogleFonts.elMessiri(
                  fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            height: 90,
            width: 75,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Theme.of(context).primaryColor.withOpacity(.55)),
            child: Text(count.toString(),
                style: GoogleFonts.elMessiri(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  backgroundColor: Theme.of(context).primaryColor),
              onPressed: () {
                if (count == 30) {
                  count = 0;
                  if (index == 3) {
                    index = 0;
                  } else {
                    index++;
                  }
                } else {
                  count++;
                }
                setState(() {});
              },
              child: Text(
                doaa[index],
                style: GoogleFonts.elMessiri(
                    fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}
