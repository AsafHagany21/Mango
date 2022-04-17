import 'package:flutter/material.dart';

class PageIndex extends StatelessWidget {
  final int pageIndex;

  const PageIndex({Key? key, required this.pageIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$pageIndex/6',
      style: const TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
    );
  }
}
