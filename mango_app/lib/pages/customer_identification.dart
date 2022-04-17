import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mango_app/utils/constants.dart';
import 'package:mango_app/widgets/form/continue_button.dart';
import 'package:mango_app/widgets/form/mango_back_button.dart';
import 'package:mango_app/widgets/form/mango_single_select.dart';
import 'package:mango_app/widgets/form/mango_text_field.dart';
import 'package:mango_app/widgets/form/page_index.dart';
import 'package:mango_app/widgets/texts/mango_alert_text.dart';
import 'package:mango_app/widgets/texts/mango_header_text.dart';
import 'package:mango_app/widgets/texts/mango_secondary_text.dart';

class CustomerIdentificationPage extends StatelessWidget {
  CustomerIdentificationPage({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const MangoBackButton(),
        title: Row(
          children: [
            Expanded(child: Container()),
            const PageIndex(pageIndex: 1),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Column(
                  children: [
                    const MangoHeaderText(text: 'fukingggggggg mangoooo'),
                    const MangoHeaderText(text: 'fukingggggggg mangoooo'),
                    const MangoHeaderText(text: 'fukingggggggg mangoooo'),
                    const MangoHeaderText(text: 'fukingggggggg mangoooo'),
                    const MangoHeaderText(text: 'fukingggggggg mangoooo'),
                    const MangoHeaderText(text: 'fukingggggggg mangoooo'),
                    const MangoHeaderText(text: 'fukingggggggg mangoooo'),
                    const MangoHeaderText(text: 'fukingggggggg mangoooo'),
                    const MangoHeaderText(text: 'fukingggggggg mangoooo'),
                    const MangoHeaderText(text: 'fukingggggggg mangoooo'),
                    const MangoHeaderText(text: 'fukingggggggg mangoooo'),
                  ],
                ),
              ],
            ),
            Expanded(child: Container()),
            ContinueButton(
                onPressed: () {
                  if (appController.chosenAges.isNotEmpty) {
                    appController.setCustomerName(nameController.text);
                    // Get.to(() => const PersonalizationTimePage());
                  } else {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => const AlertDialog(
                        title: MangoAlertText(text: 'חובה לבחור גיל'),
                      ),
                    );
                  }
                },
                child: const Text('הבא')),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
