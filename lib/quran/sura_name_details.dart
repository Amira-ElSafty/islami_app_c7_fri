import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_islami_app_fri_c7/my_theme_data.dart';
import 'package:flutter_islami_app_fri_c7/quran/Item_sura_details.dart';

class SuraNameDetails extends StatefulWidget {
  static const String routeName = 'sura-details';

  @override
  State<SuraNameDetails> createState() => _SuraNameDetailsState();
}

class _SuraNameDetailsState extends State<SuraNameDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments as SuraNameDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            '${args.name}',
            style: Theme.of(context).textTheme.headline1,
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          padding: EdgeInsets.all(12),
          child:
              /*
              condition ? true : false
               */
              verses.length == 0
                  ? Center(
                      child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                    ))
                  : ListView.separated(
                      itemBuilder: (context, index) {
                        return ItemSuraDetailsScreen(
                          name: verses[index],
                          index: index,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: MyTheme.goldPrimary,
                          thickness: 2,
                        );
                      },
                      itemCount: verses.length),
        ),
      ),
    ]);
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    print(lines);
    verses = lines;
    setState(() {});
  }
}

class SuraNameDetailsArgs {
  String name;

  int index;

  SuraNameDetailsArgs({required this.name, required this.index});
}
