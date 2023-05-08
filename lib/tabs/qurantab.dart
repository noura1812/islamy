import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/models/suraModel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/screens/suraContent.dart';

class QuranTab extends StatefulWidget {
  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<String> names = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  List<int> nums = [];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    nums.isEmpty ? loadFile() : null;

    return Stack(
      children: [
        Column(
          children: [
            Image.asset(
              'assets/images/Screenshot (1).png',
              height: height * .3,
            ),
            Divider(
              height: 2,
              thickness: 2,
              color: Theme.of(context).primaryColor,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: width / 2,
                        alignment: Alignment.center,
                        child: Text(
                          AppLocalizations.of(context)!.ayat_count,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          width: 0,
                          thickness: 2,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Container(
                        width: width / 2,
                        alignment: Alignment.center,
                        child: Text(
                          AppLocalizations.of(context)!.sura_names,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Divider(
                      height: 2,
                      thickness: 2,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Flexible(
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                          alignment: Alignment.center,
                                          width: width / 2,
                                          child: nums.length != names.length
                                              ? SizedBox(
                                                  width: 15,
                                                  height: 15,
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    strokeWidth: 2,
                                                  ),
                                                )
                                              : Text(nums[index].toString())),
                                      Container(
                                        alignment: Alignment.center,
                                        width: width / 2,
                                        child: InkWell(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, SuraContent.routname,
                                                  arguments: SuraModel(
                                                      names[index], index));
                                            },
                                            child: Text(names[index],
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium!
                                                    .copyWith(
                                                      fontSize: 20,
                                                    ))),
                                      ),
                                    ],
                                  ));
                            },
                            itemCount: names.length,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: height,
          child: VerticalDivider(
            indent: height * .3,
            width: 0,
            thickness: 2,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }

  Future<void> loadFile() async {
    for (int i = 0; i < names.length; i++) {
      String sura = await rootBundle.loadString('assets/suras/${i + 1}.txt');
      sura = sura.split('\n').where((s) => s.trim().isNotEmpty).join('\n');
      var lineCount = sura.split('\n');
      nums.add(lineCount.length);
    }

    setState(() {});
  }
}
