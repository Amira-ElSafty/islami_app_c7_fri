import 'package:flutter/material.dart';
import 'package:flutter_islami_app_fri_c7/hadeth/hadeth_details_screen.dart';
import 'package:flutter_islami_app_fri_c7/hadeth/hadeth_tab.dart';

class ItemHadethName extends StatelessWidget {
  HadethItem hadethItem;

  ItemHadethName({required this.hadethItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetailsScreen.routeName, arguments: hadethItem);
      },
      child: Text(
        hadethItem.title,
        style: Theme.of(context).textTheme.subtitle1,
        textAlign: TextAlign.center,
      ),
    );
  }
}
