import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MangoChoiceChip extends StatelessWidget {
  final List valuesList;
  final List chosenValuesList;
  final String label;
  final bool singleSelect;

  const MangoChoiceChip({
    Key? key,
    required this.valuesList,
    required this.chosenValuesList,
    required this.label,
    this.singleSelect = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx((() => Padding(
        padding: const EdgeInsets.all(2),
        child: ChoiceChip(
          selectedColor: const Color.fromARGB(255, 54, 168, 244),
          elevation: chosenValuesList.contains(label) ? 5 : 0,
          backgroundColor: const Color.fromARGB(99, 38, 160, 241),
          label: Text(label),
          selected: chosenValuesList.contains(label),
          onSelected: (value) {
            if (chosenValuesList.contains(label)) {
              chosenValuesList.remove(label);
              return;
            }
            if (singleSelect) {
              chosenValuesList.clear();
            }
            chosenValuesList.add(label);
          },
        ))));
  }
}
