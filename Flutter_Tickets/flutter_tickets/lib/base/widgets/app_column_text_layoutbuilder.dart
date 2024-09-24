import 'package:flutter/material.dart';
import 'package:flutter_tickets/base/widgets/text_style_third.dart';

class AppColumnTextLayoutbuilder extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  const AppColumnTextLayoutbuilder(
      {super.key,
      required this.topText,
      required this.bottomText,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(text: topText),
        const SizedBox(height: 5),
        TextStyleThird(text: bottomText),
      ],
    );
  }
}
