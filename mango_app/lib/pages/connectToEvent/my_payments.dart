import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mango_app/pages/summary_page.dart';
import 'package:mango_app/pages/createEvent/event_configuration.dart';
import 'package:mango_app/utils/constants.dart';
import 'package:mango_app/widgets/form/continue_button.dart';
import 'package:mango_app/widgets/form/mango_back_button.dart';
import 'package:mango_app/widgets/form/mango_text_field.dart';
import 'package:mango_app/widgets/form/page_index.dart';
import 'package:mango_app/widgets/sub%20page/mango_payments.dart';
import 'package:mango_app/widgets/texts/mango_header_text.dart';

class MyPaymentsPage extends StatelessWidget {
  MyPaymentsPage({Key? key}) : super(key: key);
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
                  children: const [
                    MangoHeaderText(text: 'כמה שילמתי?'),
                    SizedBox(height: 15),
                    MangoPayments(),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
            Expanded(child: Container()),
            ContinueButton(
              onPressed: () {
                Get.to(() => SummaryPage());
              },
              child: const Text('הבא'),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
