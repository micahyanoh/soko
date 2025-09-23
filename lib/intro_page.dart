import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soko/home_page.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 80,
              bottom: 20,
              left: 60,
              right: 60,
            ),
            child: Center(
              child: Image.asset(
                'lib/images/avoccado.jpg',
                width: 250,
                height: 250,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              'Welcome to Soko App, We deliver fresh groceries to your doorstep!',
              style: GoogleFonts.notoSerif(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            'Fresh everyday',
            style: GoogleFonts.notoSerif(fontSize: 18, color: Colors.grey[700]),
          ),
          Spacer(),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
