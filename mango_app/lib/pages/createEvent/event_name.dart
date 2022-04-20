import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mango_app/pages/createEvent/event_date.dart';
import 'package:mango_app/utils/constants.dart';
import 'package:mango_app/widgets/form/continue_button.dart';
import 'package:mango_app/widgets/form/mango_back_button.dart';
import 'package:mango_app/widgets/form/mango_single_select.dart';
import 'package:mango_app/widgets/form/mango_text_field.dart';
import 'package:mango_app/widgets/form/page_index.dart';
import 'package:mango_app/widgets/texts/mango_alert_text.dart';
import 'package:mango_app/widgets/texts/mango_header_text.dart';
import 'package:mango_app/widgets/texts/mango_secondary_text.dart';

class EventNamePage extends StatelessWidget {
  EventNamePage({Key? key}) : super(key: key);
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
                    const MangoHeaderText(text: 'שם האירוע'),
                    const SizedBox(height: 15),
                    MangoTextField(
                      controller: nameController,
                    )
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
            Expanded(child: Container()),
            ContinueButton(
                onPressed: () {
                    appController.setEventName(nameController.text);
                    Get.to(() =>  EventDatePage());
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
