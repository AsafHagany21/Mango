import 'package:flutter/material.dart';
import 'package:mango_app/widgets/form/mango_choice_chip.dart';
// import 'package:multi_select_flutter/multi_select_flutter.dart';

class MangoSingleSelect extends StatelessWidget {
  final List valuesList;
  final List chosenValuesList;

  const MangoSingleSelect(
      {Key? key, required this.valuesList, required this.chosenValuesList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List<Widget>.generate(
            valuesList.length,
            (index) => MangoChoiceChip(
                valuesList: valuesList,
                chosenValuesList: chosenValuesList,
                label: valuesList[index])));
  }
}
