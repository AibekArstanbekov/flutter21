import 'package:flutter/material.dart';

import 'package:flutter_flutter_stlw_stfw/core/theme.dart';
import 'package:flutter_flutter_stlw_stfw/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

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
          title: Text(
            "Counter App",
            style: MyTheme().myLightTheme.textTheme.displayLarge,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 325,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Count: $count",
                    style: MyTheme().myLightTheme.textTheme.displayMedium,
                  ),
                ),
              ),
              const SizedBox(
                height: 41,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        count--;
                      });
                    },
                    child: Container(
                      width: 80,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xff0d61ae),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: MyTheme().myLightTheme.iconTheme.color,
                        size: MyTheme().myLightTheme.iconTheme.size,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: Container(
                      width: 80,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xff0d61ae),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.add,
                        color: MyTheme().myLightTheme.iconTheme.color,
                        size: MyTheme().myLightTheme.iconTheme.size,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 41,
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
                      builder: (context) => SecondPage(
                        count: count,
                      ),
                    ),
                  );
                },
                child: const Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
