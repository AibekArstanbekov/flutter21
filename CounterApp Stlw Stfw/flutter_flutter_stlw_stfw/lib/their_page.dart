import 'package:flutter/material.dart';

import 'package:flutter_flutter_stlw_stfw/main.dart';

class TheirPage extends StatelessWidget {
  const TheirPage({super.key});

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
          leading: IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyHomePage(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_back),
          ),
          actions: const [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            )
          ],
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Counter App Back',
                  style: TextStyle(color: Colors.white, fontSize: 32)),
            ),
          ],
        ),
      ),
    );
  }
}
