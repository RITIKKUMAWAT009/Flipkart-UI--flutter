import 'package:flipcart_clone/src/common/widgets/image_with_text/vertical_image_text.dart';
import 'package:flipcart_clone/src/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                VerticalImageText(
                  image: TImages.productImage1,
                  productName: Constants.productName,
                  titleDiscount: Constants.discount,
                ),
                VerticalImageText(
                  image: TImages.productImage6,
                  productName: Constants.productName,
                  titleDiscount: Constants.discount,
                ),
                VerticalImageText(
                  image: TImages.productImage5,
                  productName: Constants.productName,
                  titleDiscount: Constants.discount,
                ),
                VerticalImageText(
                  image: TImages.productImage2,
                  productName: Constants.productName,
                  titleDiscount: Constants.discount,
                ),
                VerticalImageText(
                  image: TImages.productImage3,
                  productName: Constants.productName,
                  titleDiscount: Constants.discount,
                ),
                VerticalImageText(
                  image: TImages.productImage4,
                  productName: Constants.productName,
                  titleDiscount: Constants.discount,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                VerticalImageText(
                  image: TImages.productImage1,
                  productName: Constants.productName,
                  titleDiscount: Constants.discount,
                ),
                VerticalImageText(
                  image: TImages.productImage6,
                  productName: Constants.productName,
                  titleDiscount: Constants.discount,
                ),
                VerticalImageText(
                  image: TImages.productImage5,
                  productName: Constants.productName,
                  titleDiscount: Constants.discount,
                ),
                VerticalImageText(
                  image: TImages.productImage2,
                  productName: Constants.productName,
                  titleDiscount: Constants.discount,
                ),
                VerticalImageText(
                  image: TImages.productImage3,
                  productName: Constants.productName,
                  titleDiscount: Constants.discount,
                ),
                VerticalImageText(
                  image: TImages.productImage4,
                  productName: Constants.productName,
                  titleDiscount: Constants.discount,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
