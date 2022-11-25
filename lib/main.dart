import 'package:flutter/material.dart';
import 'package:flutter_islami_app_fri_c7/hadeth/hadeth_details_screen.dart';
import 'package:flutter_islami_app_fri_c7/home/home_screen.dart';
import 'package:flutter_islami_app_fri_c7/my_theme_data.dart';
import 'package:flutter_islami_app_fri_c7/quran/sura_name_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraNameDetails.routeName: (context) => SuraNameDetails(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
    );
  }
}
