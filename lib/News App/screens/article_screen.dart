import 'package:flutter/material.dart';
import 'package:online_shop/News%20App/widgets/bottom_nav_bar.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  static const routeName = '/article';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(index: 1),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          Column(
            children: [
              Text(
                'Discover',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
