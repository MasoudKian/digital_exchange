import 'package:digital_exchange/ui/Market_Page.dart';
import 'package:digital_exchange/ui/home_page.dart';
import 'package:digital_exchange/ui/profile_page.dart';
import 'package:digital_exchange/ui/ui_helper/bottom_nav.dart';
import 'package:digital_exchange/ui/watch_list_page.dart';
import 'package:flutter/material.dart';

class MainWraper extends StatefulWidget {
  MainWraper({super.key});

  final PageController _pageViewController = PageController();

  @override
  State<MainWraper> createState() => _MainWraperState();
}

class _MainWraperState extends State<MainWraper> {
  final PageController myPage = PageController(initialPage: 0);
  final PageController _myPage = PageController();

  @override
  Widget build(BuildContext context) {
    var primaryColor = Theme.of(context).primaryColor;
    var primaryColorLight = Theme.of(context).primaryColorLight;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColor,
        child:  Icon(Icons.compare_arrows_outlined,color: primaryColorLight,size: 30,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNav(controller: myPage),
      body: PageView(
        controller: myPage,
        scrollDirection: Axis.horizontal,
        children: [
          HomePage(_myPage),
          MarketPage(),
          ProfilePage(),
          WatchListPage(),
        ],
      ),
    );
  }
}
