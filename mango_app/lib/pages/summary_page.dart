import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mango_app/pages/first_page.dart';
import 'package:mango_app/utils/constants.dart';
import 'package:mango_app/widgets/form/continue_button.dart';
import 'package:mango_app/widgets/form/mango_back_button.dart';
import 'package:mango_app/widgets/sub%20page/mango_equipment.dart';
import 'package:mango_app/widgets/sub%20page/mango_free_dates.dart';
import 'package:mango_app/widgets/sub%20page/mango_payments.dart';
import 'package:mango_app/widgets/texts/mango_header_text.dart';
import 'package:mango_app/widgets/texts/mango_secondary_text.dart';

class SummaryPage extends StatelessWidget {
  SummaryPage({Key? key}) : super(key: key);

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
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: [
                  MangoHeaderText(
                    text: appController.data['eventName'] ?? "אירוע ללא שם",
                  ),
                  const MangoSecondaryText(text: 'איזה ציוד אני מביא?'),
                  const SizedBox(height: 10),
                  const MangoEquipment(),
                  const MangoSecondaryText(text: 'מתי אני פנוי/ה?'),
                  const SizedBox(height: 10),
                  const MangoFreeDates(),
                  const MangoSecondaryText(text: 'כמה שילמתי?'),
                  const SizedBox(height: 10),
                  const MangoPayments(),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            ContinueButton(
              onPressed: () {
                Get.to(() => firstPagePage());
              },
              child: const Text('שיתוף אירוע'),
            ),
            Expanded(child: Container()),
            const SizedBox(
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
