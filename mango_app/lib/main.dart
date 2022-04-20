import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mango_app/pages/summary_page.dart';
import 'package:mango_app/pages/connectToEvent/my_equipment.dart';
import 'package:mango_app/pages/connectToEvent/my_free_dates.dart';
import 'package:mango_app/pages/connectToEvent/my_name.dart';
import 'package:mango_app/pages/connectToEvent/my_payments.dart';
import 'package:mango_app/pages/createEvent/event_configuration.dart';
import 'package:mango_app/pages/createEvent/event_date.dart';
import 'package:mango_app/pages/createEvent/event_name.dart';
import 'package:mango_app/pages/createEvent/event_time.dart';
import 'package:mango_app/pages/first_page.dart';
import 'package:mango_app/utils/app_controller.dart';
import 'package:mango_app/utils/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(AppController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onReady: () => appController.initApp(),
      title: 'Mango',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      defaultTransition: Transition.leftToRight,
      textDirection: TextDirection.rtl,
      home: firstPagePage(),
      initialRoute: '/firstPage',
      getPages: [
        GetPage(
          name: '/firstPage',
          page: () => firstPagePage(),
        ),
        GetPage(
          name: '/createEvent/eventConfiguration',
          page: () => EventConfigurationPage(),
        ),
        GetPage(
          name: '/createEvent/eventName',
          page: () => EventNamePage(),
        ),
        GetPage(
          name: '/createEvent/eventDate',
          page: () => EventDatePage(),
        ),
        GetPage(
          name: '/createEvent/eventTime',
          page: () => EventTimePage(),
        ),
        GetPage(
          name: '/connectToEvent/MyName',
          page: () => MyNamePage(),
        ),
        GetPage(
          name: '/connectToEvent/MyEquipment',
          page: () => MyEquipmentPage(),
        ),
        GetPage(
          name: '/connectToEvent/MyFreeDates',
          page: () => MyFreeDatesPage(),
        ),
        GetPage(
          name: '/connectToEvent/MyPayments',
          page: () => MyPaymentsPage(),
        ),
        GetPage(
          name: '/summaryPage',
          page: () => SummaryPage(),
        ),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
