import 'package:flipcart_clone/src/common/widgets/custom_shape/container/circular_container.dart';
import 'package:flutter/material.dart';
class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.titleDiscount,
    required this.productName,
  });

  final String image;
  final String titleDiscount;
  final String productName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          CircularContainer(
            backgroundColor: Colors.purple.shade200,
            width: 70,
            height: 70,
            child: Image(
              image: AssetImage(image),
            ),
          ),
          CircularContainer(
              height: 20,
              width: 80,
              backgroundColor: Colors.yellow,
              child: Center(
                  child: Text(titleDiscount,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        wordSpacing: 2,
                      )))),
          CircularContainer(
              height: 40,
              width: 80,
              backgroundColor: Colors.transparent,
              child: Text(
                productName,
                maxLines: 2,textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,style:const TextStyle(fontSize: 12),
              )),
        ],
      ),
    );
  }
}
