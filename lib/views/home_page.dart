import 'package:default_stateful_counter_app_to_stateless_using_getx/models/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 94, 17, 174),
        title: const Center(
          child: Text('GetX'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              // ! There are there way which you can use
              // ! 1) Obx, 2) Getx, 3) GetBuilder (with this your variable shouldn't be observable, i.e obs)

              child: Obx(
                () => Center(
                  child: Text(
                    'You\'ve pressed: ${homePageController.getCounter().toString()}',
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),

              // child: GetX<HomePageController>(
              //   builder: (controller) {
              //     return Center(
              //       child: Text(
              //           'You\'ve pressed: ${controller.getCounter().toString()}',
              //           style: const TextStyle(
              //             fontSize: 30,
              //           )),
              //     );
              //   },
              // ),
            ),
            Expanded(
              child: FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 94, 17, 174),
                onPressed: () => homePageController.intrement(),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
