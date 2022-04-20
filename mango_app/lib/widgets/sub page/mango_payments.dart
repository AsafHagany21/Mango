import 'package:flutter/material.dart';
import 'package:mango_app/widgets/form/mango_text_field.dart';

class MangoPayments extends StatelessWidget {
  const MangoPayments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        MangoTextField(
          labelText: "מלאאאא",
          // controller: nameController,
        )
      ],
    );
  }
}
