import 'package:flutter/material.dart';

class MangoHeaderText extends StatelessWidget {
  final String text;

  const MangoHeaderText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 30,
        color: Color.fromARGB(255, 0, 0, 0),
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
