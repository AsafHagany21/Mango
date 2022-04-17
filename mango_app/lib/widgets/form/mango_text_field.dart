import 'package:flutter/material.dart';

class MangoTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String labelText;
  const MangoTextField({Key? key, this.controller, this.labelText = ""})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: TextField(
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
        controller: controller,
      ),
    );
  }
}
