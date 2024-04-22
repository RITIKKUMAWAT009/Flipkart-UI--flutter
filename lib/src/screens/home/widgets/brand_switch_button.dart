import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
class BrandSwitchButton extends StatelessWidget {
  const BrandSwitchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(Constants.brandMall),
        SizedBox(
          width: 60,
          height: 30,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Switch(
              value: true,
              activeColor: Colors.white,
              // activeThumbImage: const AssetImage("assets/logos/img.png"),
              inactiveThumbColor: Colors.white,
              trackColor:
              const MaterialStatePropertyAll(Colors.black),
              onChanged: (bool value1) {},
            ),
          ),
        ),
      ],
    );
  }
}
