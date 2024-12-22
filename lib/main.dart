import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wear_it/components/models/cart.dart';
import 'package:wear_it/pages/intropage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Color orange = Color.fromARGB(255, 255, 60, 0);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context,child)=> MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
    //
    // MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter Demo',
    //   theme: ThemeData(),
    //   home:
    //       IntroPage(), // This trailing comma makes auto-formatting nicer for build methods.
    // );
  }
}
