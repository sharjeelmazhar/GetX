import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/home_page_controller.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomePageController homepageController = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Getx')),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () => Text(
                      'Obs Increment: ${homepageController.getObsCounter().toString()}',
                      style: const TextStyle(fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GetX<HomePageController>(
                    builder: (getXController) {
                      return Text(
                        'GetX Increment: ${getXController.getGetxCounter().toString()}',
                        style: const TextStyle(fontSize: 25),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GetBuilder<HomePageController>(
                    builder: (getBuilderConroller) {
                      return Text(
                        'GetBuilder Increment: ${getBuilderConroller.getBuilderCounter()}',
                        style: const TextStyle(fontSize: 25),
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView(
                // physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(8),
                // scrollDirection: Axis.horizontal,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton.extended(
                    onPressed: () => homepageController.obsIncrement(),
                    icon: const Icon(Icons.add),
                    label: const Text(
                      'Obs',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    backgroundColor: Colors.pink,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FloatingActionButton.extended(
                    onPressed: () => homepageController.getXIncrement(),
                    icon: const Icon(Icons.add),
                    label: const Text(
                      'GetX',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    backgroundColor: Colors.deepPurple,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FloatingActionButton.extended(
                    onPressed: () => homepageController.getBuilderIncrement(),
                    icon: const Icon(Icons.add),
                    label: const Text(
                      'GetBuilder',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    backgroundColor: Colors.lightGreen,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
