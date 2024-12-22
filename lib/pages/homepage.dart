import 'package:flutter/material.dart';
import 'package:wear_it/pages/cartpage.dart';

import '../components/bottomnavbar.dart';
import 'shoppage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 //Color orange = Color.fromARGB(255, 251, 72, 18);

  int _selectedIndex = 0;

  List<Widget> pages = [
    ShopPage(),
    const CartPage(),
  ];

  void navigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigationBar(index),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),

      //list of shoes for sales
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // SizedBox(
            //   height: 50,
            // ),

            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'assets/pngwing.com (4).png',
                    //color: Colors.white,
                  ),
                ),
                // SizedBox(
                //   height: 50,
                // ),
                const Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: ListTile(
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                title: Text(
                  'Log Out',
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
      body: pages[_selectedIndex],
    );
  }
}
