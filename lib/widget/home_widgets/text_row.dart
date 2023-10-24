import 'package:flutter/material.dart';
import 'package:music_app/config/app_style.dart';

class TextRow extends StatelessWidget {
  const TextRow({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: AppTextStyle.rowTextStyle,
      ),
    );
  }
}
