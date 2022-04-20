import 'package:flutter/material.dart';
import 'package:mango_app/utils/constants.dart';
import 'package:mango_app/widgets/form/mango_multi_select.dart';

class MangoFreeDates extends StatelessWidget {
  const MangoFreeDates({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MangoMultiSelect(
            valuesList: appController.MyFreeDatesList,
            chosenValuesList: appController.chosenMyFreeDates),
      ],
    );
  }
}
