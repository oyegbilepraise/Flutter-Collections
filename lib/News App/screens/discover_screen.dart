import 'package:flutter/material.dart';
import 'package:online_shop/News%20App/widgets/bottom_nav_bar.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  static const routeName = '/discover';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavBar(index: 0),
    );
  }
}
