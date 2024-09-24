import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffB5C18E),
        appBar: AppBar(
          backgroundColor: const Color(0xffB5C18E),
          title: const Text(
            'Second Page',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                Icons.home,
                size: 30,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Center(
          child: Container(
            width: 341,
            height: 44,
            decoration: BoxDecoration(
              color: const Color(0xff009a6e),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                'Count:4',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          ),
        ));
  }
}
