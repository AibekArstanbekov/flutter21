import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Work 4',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Arstanbekov Aibek",
              style: GoogleFonts.dancingScript(
                fontSize: 46,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const FlutterLogo(
              size: 70,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
            //astyndagy usun syzyk
            const Divider(
              indent: 75,
              endIndent: 75,
              thickness: 2,
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,

                  //prefexIcon bash jagyna koiot
                  //suffixIcin ayagyna koiot
                  prefixIcon: Image.asset(
                    "assets/Vector.png",
                  ),
                  border: const OutlineInputBorder(),
                  hintText: "Enter your phone number please",
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Image.asset("assets/Mail.png"),
                  border: const OutlineInputBorder(),
                  hintText: "Enter your email",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
