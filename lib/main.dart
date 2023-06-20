import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Snack-bar App'),
          centerTitle: true,
        ),
        body: SizedBox(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    'New Message', 'num num num',
                    // * notification configuration:
                    duration: const Duration(seconds: 3),
                    animationDuration: const Duration(seconds: 1),
                    forwardAnimationCurve: Curves.decelerate,
                    reverseAnimationCurve: Curves.easeInOutCubicEmphasized,
                    // * can be dismissed:
                    isDismissible: true,
                    // * border:
                    // borderWidth: 0.5,
                    // borderColor: Colors.black38,
                    // borderRadius: 10,
                    // * color:
                    // colorText: Colors.red,
                    // backgroundColor: Colors.grey
                    // barBlur: 1,
                    snackPosition: SnackPosition.TOP,
                    margin: const EdgeInsets.all(5.0),
                    icon: const Icon(Icons.notifications_active),
                  );
                },
                child: const Text(
                  'press to show notification',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
