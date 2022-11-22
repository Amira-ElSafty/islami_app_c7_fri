import 'package:flutter/material.dart';
import 'package:flutter_islami_app_fri_c7/quran/sura_name_details.dart';

class SuraName extends StatelessWidget {
  String name;

  int index;

  SuraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SuraNameDetails.routeName,
            arguments: SuraNameDetailsArgs(name: name, index: index));
      },
      child: Text(
        name,
        style: Theme.of(context).textTheme.subtitle1,
        textAlign: TextAlign.center,
      ),
    );
  }
}
