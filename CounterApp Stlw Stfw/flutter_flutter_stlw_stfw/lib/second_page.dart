import 'package:flutter/material.dart';
import 'package:flutter_flutter_stlw_stfw/core/theme.dart';
import 'package:flutter_flutter_stlw_stfw/their_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.count});
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color.fromARGB(255, 13, 63, 120),
            Color.fromARGB(255, 109, 35, 32),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "$count",
                style: MyTheme().myLightTheme.textTheme.displayLarge,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff0d61ae),
                minimumSize: const Size(200, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TheirPage(),
                  ),
                );
              },
              child: const Text(
                'Next',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
