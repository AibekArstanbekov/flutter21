//import - bul flutterdegi widgetterdi ishteetuu uchun material koldonot
import 'package:counter_app_second_page/second_page.dart';
import 'package:flutter/material.dart';
//void -bul funtionyn  jönököi ekenin bildiret
//main - bul negizgi funtionyn atalyshy , maksaty funktiony ishtetet.
// () - kasha bul funtionnyn funktion ekenin bildiret
// {} - tarmal kasha bul funtionyn denesi

void main() {
  runApp(const MyApp());
  // runApp - bul class ala turgan meted. (prostoi metod, Widget alat.)
  // MyApp - bul  class je Widget.
  // MyApp  - bul classtyn atalyshy.
  // extends  - bul muras degendi bildiret
  // StatelessWidget - bul Flutter Frameworktogy negizgi widget bolup sanalat.
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key}); - bul Konstruktor.

  const MyApp({super.key});
  // super - bul atasynan kelgen parametrler
  //override - bul özgörtüügö bolo turgan maani

  @override
  //widget - bul desingdi tüzüü uchun kural
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home _ bil widget alat, Homepagedi alat.
      home: HomePage(),
    );
  }
}

// build - kuruu (metod, funktion)
// buildContext context - bul kurup jatkan widgetterdin marshruttyn negizdööchy context
// return  - bul kaitaruu degendi  bildiret(MaterialApp kaitarat )
// MaterialApp - bul proekttin desingdin tüsün color körünüsh jagyn koldoit
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB5C18E),
      appBar: AppBar(
        backgroundColor: const Color(0xffB5C18E),
        leading: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Icon(
            Icons.menu,
            size: 30,
            color: Colors.black,
          ),
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
        title: const Center(
          child: Text(
            "Counter App Demo",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 325,
              height: 44,
              decoration: BoxDecoration(
                color: const Color(0xff009a6e),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Count: $count",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 41),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              decrement_metod(),
              const SizedBox(
                width: 40,
              ),
              increment_metod(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                Color(0xff009a6e),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SecondPage();
                  },
                ),
              );
            },
            child: const Text(
              ' To Second page',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          )
        ],
      ),
      //floatingActionButton: FloatingActionButton.extended(
      //  onPressed: () {
      //    Navigator.push(
      //      context,
      //      MaterialPageRoute(
      //        builder: (context) {
      //          return const SecondPage();
      //        },
      //      ),
      //    );
      //  },
      //  label: const Text('To Second Page'),
      //),
    );
  }

  // ignore: non_constant_identifier_names
  InkWell increment_metod() {
    return InkWell(
      onTap: () {
        count++;
        setState(() {});
      },
      child: Container(
        width: 80,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xff009a6e),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  InkWell decrement_metod() {
    return InkWell(
      onTap: () {
        count--;
        setState(() {});
      },
      child: Container(
        width: 80,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xff009a6e),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.remove,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
