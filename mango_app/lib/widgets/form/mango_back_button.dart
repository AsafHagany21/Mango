import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MangoBackButton extends StatelessWidget {
  const MangoBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      color: Colors.black,
      onPressed: () => Get.back(),
      splashRadius: 1,
      padding: const EdgeInsets.all(2),
    );
  }
}
