import 'package:flutter/material.dart';

class TextIconWidget extends StatelessWidget {
  final String text;
  final String icon;
  const TextIconWidget({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          icon,
          width: 18,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(text),
      ],
    );
  }
}
