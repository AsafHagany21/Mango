import 'package:flutter/material.dart';
import 'package:mango_app/widgets/form/mango_choice_chip.dart';

class MangoMultiSelect extends StatelessWidget {
  final List valuesList;
  final List chosenValuesList;

  const MangoMultiSelect(
      {Key? key, required this.valuesList, required this.chosenValuesList})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: valuesList.length * 35,
      child: ListView(
        // scrollDirection: Axis.horizontal,
        children: List<Widget>.generate(
            valuesList.length,
            (index) => Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    MangoChoiceChip(
                      valuesList: valuesList,
                      chosenValuesList: chosenValuesList,
                      label: valuesList[index],
                      singleSelect: false,
                    ),
                    Expanded(child: Container()),
                  ],
                )),
      ),
    );
  }
}
