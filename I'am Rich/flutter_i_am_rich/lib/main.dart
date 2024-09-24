import 'package:flutter/material.dart';
import 'package:flutter_i_am_rich/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "I'am Rich",
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xffebc90b),
        ),
        scaffoldBackgroundColor: const Color(0xffebc90b),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
