import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mango_app/pages/connectToEvent/my_name.dart';
import 'package:mango_app/pages/createEvent/event_name.dart';
import 'package:mango_app/utils/constants.dart';
import 'package:mango_app/widgets/form/continue_button.dart';
import 'package:mango_app/widgets/form/mango_back_button.dart';
import 'package:mango_app/widgets/form/mango_single_select.dart';
import 'package:mango_app/widgets/form/mango_text_field.dart';
import 'package:mango_app/widgets/form/page_index.dart';
import 'package:mango_app/widgets/texts/mango_alert_text.dart';
import 'package:mango_app/widgets/texts/mango_header_text.dart';
import 'package:mango_app/widgets/texts/mango_secondary_text.dart';

class firstPagePage extends StatelessWidget {
  firstPagePage({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const MangoBackButton(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    ContinueButton(
                      onPressed: () {
                        Get.to(() => EventNamePage());
                      },
                      child: const Text('צור אירוע חדש'),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    ContinueButton(
                      onPressed: () {
                        Get.to(() => MyNamePage());
                      },
                      child: const Text('המשך לאירוע'),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(child: Container()),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
