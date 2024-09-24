import 'package:flutter/material.dart';
import 'package:flutter_i_am_rich/app_images.dart';
import 'package:flutter_i_am_rich/app_text.dart';
import 'package:flutter_i_am_rich/app_text_style.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              appTexts.iamrich,
              style: AppTextStyle().textStyle,
            ),
            Image.asset(AppImages.almazImage),
          ],
        ),
      ),
    );
  }

  AppBar _myAppBar() {
    return AppBar(
      elevation: 10,
      title: Text(
        appTexts.homework3,
        style: AppTextStyle().textStyleIamRich,
      ),
    );
  }
}
