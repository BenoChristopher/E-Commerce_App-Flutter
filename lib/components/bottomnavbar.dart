import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  //Color orange = Color.fromARGB(255, 251, 72, 18);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: GNav(
            color: Colors.grey[500],
            activeColor: Colors.grey[800],
            tabActiveBorder: Border.all(color: Colors.white),
            tabBackgroundColor: Colors.grey.shade100,
            tabBorderRadius: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            gap: 8,
            onTabChange: (value) => onTabChange!(value),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
                //iconColor: orange,
              ),
              GButton(
                icon: Icons.shopping_bag_rounded,
                text: 'Cart',
                iconColor: Colors.white,
                //iconColor: orange
              )
            ]),
      ),
    );
  }
}
