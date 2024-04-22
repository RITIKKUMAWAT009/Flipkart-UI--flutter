import 'package:flipcart_clone/src/common/widgets/navigation/bottom_navigation.dart';
import 'package:flipcart_clone/src/constants/constants.dart';
import 'package:flutter/material.dart';
import 'widgets/all_gridview_section.dart';
import 'widgets/brand_switch_button.dart';
import 'widgets/search_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        leading: Image.asset("assets/logos/img.png"),
        title: Text(
          Constants.appTitle,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.blue.shade700),
        ),
        backgroundColor: Colors.blue.shade100,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              thickness: 1,
              height: 9,
            ),
            Row(
              children: [
                //Brand switch button
                BrandSwitchButton(),
                SearchField(),
              ],
            ),
            AllGridViewSection(),
          ],
        ),
      ),
      bottomNavigationBar:const BottomNavigation(),
    );
  }
}


