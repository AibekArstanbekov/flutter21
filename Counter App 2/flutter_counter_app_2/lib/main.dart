//import - bul flutterdegi widgetterdi ishteetuu uchun material koldonot
import 'package:flutter/material.dart';
import 'package:flutter_counter_app_2/second_page.dart';
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
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color(0xff213a57),
            Color(0xffa36361),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
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
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (count == 10 || count == 35)
              Text(
                'Flutter $count',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            Center(
              child: Container(
                width: 325,
                height: 44,
                decoration: BoxDecoration(
                  color: const Color(0xff033043),
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
              height: 60,
            ),
            TextButton(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Color(0xff033043),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SecondPage(
                      count: count,
                      text: 'Flutter ',
                    );
                  }),
                );
              },
              child: const Text(
                'To Second Page',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
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
          color: const Color(0xff033043),
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
          color: const Color(0xff033043),
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
