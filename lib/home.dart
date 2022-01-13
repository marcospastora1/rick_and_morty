import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_morty/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('Rick and Morty - Personagens'),
      ),
      body: Obx(
        () => GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: controller.personagens['results']?.length ?? 0,
          itemBuilder: (_, index) {
            return GestureDetector(
              onTap: () {},
              child: Image.network(
                '${controller.personagens['results'][index]['image']}',
              ),
            );
          },
        ),
      ),
    );
  }
}
