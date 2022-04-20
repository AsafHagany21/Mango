import 'package:flutter/material.dart';
import 'package:mango_app/widgets/form/mango_text_field.dart';
import 'package:mango_app/widgets/texts/mango_header_text.dart';
import 'package:mango_app/widgets/texts/mango_secondary_text.dart';

class MangoEquipment extends StatelessWidget {
  const MangoEquipment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: const [
            MangoTextField(
              labelText: "אוהל",
            )
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
