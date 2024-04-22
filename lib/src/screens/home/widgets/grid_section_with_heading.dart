import 'package:flipcart_clone/src/common/widgets/custom_shape/container/circular_container.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
    this.heading = "",
    required this.image,
    this.productName = "",
    required this.subTitle,
    this.showRightButton = false,
    this.icon = Icons.arrow_forward_ios,
    this.subTitleColor = Colors.green,
    this.backgroundColor = Colors.pink,
    this.price = "",
    this.enablePriceText = false,  this.crossAxisCount=2,
    this.itemCount=4
  });

  final String heading;
  final List<String> image;
  final String productName;
  final String subTitle;
  final String price;
  final bool showRightButton;
  final bool enablePriceText;
  final IconData icon;
  final Color subTitleColor;
  final Color backgroundColor;
  final int crossAxisCount;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  heading,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              showRightButton
                  ? CircularContainer(
                      margin: const EdgeInsets.only(right: 20),
                      height: 30,
                      width: 30,
                      backgroundColor: Colors.blue.shade800,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.shade600,
                          offset: const Offset(0.0, 1.0),
                          blurRadius: 15.0,
                        )
                      ],
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            icon,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : const CircularContainer(
                      backgroundColor: Colors.transparent,
                      height: 0,
                      width: 0,
                    )
            ],
          ),
          GridView.builder(
            itemCount: itemCount,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 0,
                mainAxisSpacing: 10,
                mainAxisExtent: 220),
            itemBuilder: (_, index) => CircularContainer(
              height: 70,
              width: 100,
              radius: 10,
              margin: const EdgeInsets.only(left: 7, right: 7),
              backgroundColor: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0),
                  blurRadius: 10.0,
                ),
              ],
              child: Column(
                children: [
                  Image(
                    image: AssetImage(image[index]),
                    height: 160,
                    fit: BoxFit.contain,
                  ),
                  Text(productName),
                  if (enablePriceText == true)
                    Text(
                      "\$ $price",
                      style: TextStyle(overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade900),
                    ),
                  Text(
                    subTitle,
                    style: TextStyle(color: subTitleColor,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),padding:const EdgeInsets.only(bottom: 20),
          ),
        ],
      ),
    );
  }
}
