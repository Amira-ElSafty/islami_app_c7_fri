import 'package:flutter/material.dart';

class SuraNameDetails extends StatelessWidget {
  static const String routeName = 'sura-details';

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments as SuraNameDetailsArgs;
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
      ),
    ]);
  }
}

class SuraNameDetailsArgs {
  String name;

  int index;

  SuraNameDetailsArgs({required this.name, required this.index});
}
