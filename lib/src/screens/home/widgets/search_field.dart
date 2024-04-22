import 'package:flipcart_clone/src/constants/constants.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: MediaQuery.of(context).size.width/1.3,
      height: 45,
      decoration:const BoxDecoration(boxShadow: [
        BoxShadow(
        color: Colors.grey,
        offset: Offset(0.0, 1.0),
        blurRadius: 10.0,
      ),
      ],),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
         enabledBorder: InputBorder.none,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintText: Constants.search,
          hintStyle: const TextStyle(color: Colors.grey),
          suffixIcon: Container(
            width: 60,
            margin: const EdgeInsets.only(right: 4),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.mic,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
