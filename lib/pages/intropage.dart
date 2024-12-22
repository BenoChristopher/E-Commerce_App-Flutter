import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wear_it/pages/homepage.dart';

class IntroPage extends StatelessWidget {
  IntroPage({super.key});

  //Color orange = Color.fromARGB(255, 251, 72, 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Image.asset(
              'assets/pngwing.com (7).png',
              color: Colors.deepOrange[400],
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'J',
                style: GoogleFonts.caveat(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.deepOrange[400]),
              ),
              Text(
                'ust do it',
                style: GoogleFonts.caveat(
                    fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Brand new sneakers and custom kicks with premium quality',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.normal,
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            ),
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.deepOrange[400],
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Shop Now',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
