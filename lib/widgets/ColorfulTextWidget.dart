import 'package:flutter/material.dart';

class ColorfulTextWidget extends StatelessWidget {
  final String text;

  const ColorfulTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final colors = [
      Colors.red,
      Colors.orange,
      Colors.purple,
      Colors.green,
      Colors.blue,
      Colors.indigo,
      Colors.purple,
      Colors.pink,
    ];

    return RichText(
      text: TextSpan(
        children: List.generate(
          text.length,
              (index) => TextSpan(
            text: text[index],
            style: TextStyle(
              fontSize: 28,
              fontFamily: "Nunito",
              fontWeight: FontWeight.bold,
              color: colors[index % colors.length],
            ),
          ),
        ),
      ),
    );
  }
}
