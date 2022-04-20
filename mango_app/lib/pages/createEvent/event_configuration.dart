import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mango_app/pages/createEvent/event_date.dart';
import 'package:mango_app/utils/constants.dart';
import 'package:mango_app/widgets/form/continue_button.dart';
import 'package:mango_app/widgets/form/mango_back_button.dart';
import 'package:mango_app/widgets/form/mango_multi_select.dart';
import 'package:mango_app/widgets/form/page_index.dart';
import 'package:mango_app/widgets/texts/mango_header_text.dart';

class EventConfigurationPage extends StatelessWidget {
  EventConfigurationPage({Key? key}) : super(key: key);
  final TextEditingController dateController = TextEditingController();

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
                    const MangoHeaderText(text: 'אילו דברים תרצו לארגן?'),
                    const SizedBox(height: 15),
                    MangoMultiSelect(
                        valuesList: appController.EventConfigurationOptionsList,
                        chosenValuesList:
                            appController.chosenEventConfigurationOptions),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
            Expanded(child: Container()),
            ContinueButton(
                onPressed: () {
                  Get.to(() => EventDatePage());
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
