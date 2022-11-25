import 'package:flutter/material.dart';
import 'package:flutter_islami_app_fri_c7/hadeth/hadeth_tab.dart';
import 'package:flutter_islami_app_fri_c7/home/radio_tab.dart';
import 'package:flutter_islami_app_fri_c7/home/tasbeh_tab.dart';
import 'package:flutter_islami_app_fri_c7/my_theme_data.dart';
import 'package:flutter_islami_app_fri_c7/quran/quran_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
            appBar: AppBar(
              title: Text(
                'Islami',
                style: Theme.of(context).textTheme.headline1,
              ),
              centerTitle: true,
            ),
            bottomNavigationBar: Theme(
              data:
                  Theme.of(context).copyWith(canvasColor: MyTheme.goldPrimary),
              child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/ic_quran.png'),
                      ),
                      label: 'Quran'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/ic_hadeth.png'),
                      ),
                      label: 'Hadeth'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/ic_sebha.png'),
                      ),
                      label: 'Tasbeh'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/ic_radio.png'),
                      ),
                      label: 'Radio'),
                ],
              ),
            ),
            body: tabs[selectedIndex]),
      ],
    );
  }

  List<Widget> tabs = [QuranTab(), HadethTab(), TasbehTab(), RadioTab()];
}
