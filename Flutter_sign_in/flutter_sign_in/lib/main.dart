import 'package:flutter/material.dart';
import 'package:flutter_sign_in/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //
      title: 'SignIn App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff056C5C),
        //body color
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        //appBar color
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
