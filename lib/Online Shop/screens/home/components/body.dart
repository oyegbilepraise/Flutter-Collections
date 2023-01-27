import 'package:flutter/material.dart';
import 'package:online_shop/Online%20Shop/models/Product.dart';
import 'package:online_shop/Online%20Shop/screens/details/details_screen.dart';
import 'package:online_shop/Online%20Shop/screens/home/components/categories.dart';
import 'package:online_shop/Online%20Shop/screens/home/components/item_card.dart';
import 'package:online_shop/Online%20Shop/constants.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  crossAxisCount: 2 ,
                  childAspectRatio: 0.65),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: products[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
        // itemCard(product: product, press: press),
      ],
    );
  }
}
