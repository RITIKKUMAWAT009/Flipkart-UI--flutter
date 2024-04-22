import 'package:carousel_slider/carousel_slider.dart';
import 'package:flipcart_clone/src/screens/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/custom_shape/container/circular_container.dart';

class CustomCarousalSlider extends StatelessWidget {
  const CustomCarousalSlider({super.key, required this.item});

  final List<String> item;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 1000),
            autoPlayInterval: const Duration(milliseconds: 2000),
            enlargeCenterPage: true,
            enlargeFactor: 1,
            onPageChanged: (index, _) => controller.updateCarousalIndex(index),
          ),
          items: item.map((url) => Image.asset(url)).toList(),
        ),
        const SizedBox(height: 16),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < item.length; i++)
                CircularContainer(
                  margin: const EdgeInsets.only(right: 10),
                  width: 15,
                  height: 4,
                  backgroundColor: controller.carousalCurrentIndex.value == i
                      ? Colors.blue.shade900
                      : Colors.grey,
                ),
            ],
          ),
        )
      ],
    );
  }
}
