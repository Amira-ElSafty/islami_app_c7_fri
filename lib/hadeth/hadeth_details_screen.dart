import 'package:flutter/material.dart';
import 'package:flutter_islami_app_fri_c7/hadeth/Item_hadeth_details.dart';
import 'package:flutter_islami_app_fri_c7/hadeth/hadeth_tab.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeth-details';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethItem;

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
            '${args.title}',
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
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return ItemHadethDetailsScreen(content: args.content[index]);
                },
                itemCount: args.content.length)),
      ),
    ]);
  }
}
