import 'package:flipcart_clone/src/constants/constants.dart';
import 'package:flipcart_clone/src/constants/image_strings.dart';
import 'package:flutter/material.dart';

import 'category_section.dart';
import 'custome_carousal_slider.dart';
import 'grid_section_with_heading.dart';

class AllGridViewSection extends StatelessWidget {
  const AllGridViewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const CustomCarousalSlider(
          item: [
            TImages.productImage6,
            TImages.productImage1,
            TImages.productImage2,
            TImages.productImage3,
            TImages.productImage4,
            TImages.productImage2,
            TImages.productImage3,
            TImages.productImage4,
            TImages.productImage5,
            TImages.productImage6,
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const CategorySection(),
        TopSection(
          image: const [
            TImages.productImage9,
            TImages.productImage8,
            TImages.productImage7,
            TImages.productImage6,
            TImages.productImage3,
            TImages.productImage1,
            TImages.productImage10,
            TImages.productImage5,
            TImages.productImage2,
          ],
          showRightButton: true,
          subTitle: Constants.specialOffer,
          backgroundColor: Colors.pink.shade200,
          heading: Constants.heading1,
          productName: Constants.productName,
        ),
        TopSection(
          image: const [
            TImages.productImage9,
            TImages.productImage8,
            TImages.productImage7,
            TImages.productImage6,
            TImages.productImage3,
            TImages.productImage1,
            TImages.productImage10,
            TImages.productImage5,
            TImages.productImage2,
          ],
          showRightButton: true,
          subTitle: Constants.specialOffer,
          backgroundColor: Colors.white,
          heading: Constants.heading2,
          productName: Constants.productName,
          enablePriceText: true,
          price: "999999",
          crossAxisCount: 3,
          itemCount: 9,
        ),
        TopSection(
          image: const [
            TImages.productImage9,
            TImages.productImage8,
            TImages.productImage7,
            TImages.productImage6,
            TImages.productImage3,
            TImages.productImage1,
            TImages.productImage10,
            TImages.productImage5,
            TImages.productImage2,
          ],
          showRightButton: true,
          subTitle: Constants.specialOffer2,
          backgroundColor: Colors.white,
          heading: Constants.heading3,
          productName: Constants.productName,
          subTitleColor: Colors.black,
          crossAxisCount: 3,
          itemCount: 9,
        ),
      ],
    );
  }
}
