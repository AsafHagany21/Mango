import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mango_app/pages/customer_identification.dart';
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
      home: CustomerIdentificationPage(),
      initialRoute: '/CustomerIdentification',
      getPages: [
        GetPage(
          name: '/CustomerIdentification',
          page: () => CustomerIdentificationPage(),
        )
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
