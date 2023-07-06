import 'package:digital_exchange/providers/theme_provider.dart';
import 'package:digital_exchange/ui/ui_helper/theme_switcher.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  BottomNav({super.key, required this.controller});

  PageController controller;




  @override
  Widget build(BuildContext context) {
    var primaryColorLight = Theme.of(context).primaryColorLight;
    var primaryColor = Theme.of(context).primaryColor;
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      elevation: 0,
      notchMargin: 7,
      color: primaryColor,
      child: SizedBox(
        height: 63,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2 - 20,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      controller.animateToPage(
                        0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    icon:  Icon(
                      Icons.home,
                      color: primaryColorLight,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      controller.animateToPage(
                        1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    icon:  Icon(
                      Icons.bar_chart,
                      color:  primaryColorLight,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2 - 20,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      controller.animateToPage(
                       2,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    icon:  Icon(
                      Icons.person,
                      color: primaryColorLight,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      controller.animateToPage(
                        3,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    icon:  Icon(
                      Icons.info,
                      color: primaryColorLight,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
