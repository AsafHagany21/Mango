import 'package:flutter/material.dart';

class MangoSecondaryText extends StatelessWidget {
  final String text;

  const MangoSecondaryText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 10, color: Colors.black, fontWeight: FontWeight.normal),
    );
  }
}
