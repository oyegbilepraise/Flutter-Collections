import 'package:flutter/material.dart';
import 'package:online_shop/Coffe%20UI/widgets/coffee_tile.dart';
import 'package:online_shop/Coffe%20UI/widgets/coffee_type.dart';

class CoffeeHomePage extends StatefulWidget {
  const CoffeeHomePage({Key? key}) : super(key: key);

  @override
  State<CoffeeHomePage> createState() => _CoffeeHomePageState();
}

class _CoffeeHomePageState extends State<CoffeeHomePage> {
  final List coffeeType = [
    ['Cappucino', true],
    ['Latte', false],
    ['Flat Coffee', false],
    ['Expresso', false],
  ];

  void coffeeTypeSelected(int index) {
    for (int i = 0; i < coffeeType.length; i++) {
      coffeeType[i][1] = false;
    }
    setState(() {
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: const EdgeInsets.only(left: 10.0),
          width: 200,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Icon(
            Icons.grid_view_rounded,
            color: Colors.grey,
          ),
        ),
        actions: [
          Container(
            // margin: EdgeInsets.only(right: 20),
            padding: const EdgeInsets.all(10),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://res.cloudinary.com/praisecloud/image/upload/v1675345645/1674679168131_qdiar0.jpg',
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Find the best coffee for you',
              style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Find your coffee...',
                  border: InputBorder.none,
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.grey.shade600),
                  // ),
                  // enabledBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.grey.shade600),
                  // ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          SizedBox(
            height: 50,
            child: ListView.builder(
              itemCount: coffeeType.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: CoffeeType(
                    coffeeType: coffeeType[index][0],
                    isSelected: coffeeType[index][1],
                    onTap: () {
                      coffeeTypeSelected(index);
                    },
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 25),
          SizedBox(
            height: 280,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CoffeeTile(
                  coffeeImagePath: 'assets/images/new_cof.jpeg',
                  coffeeName: 'Black',
                  coffeePrice: ' 4.20',
                ),
                CoffeeTile(
                  coffeeImagePath: 'assets/images/new_coffee.jpeg',
                  coffeeName: 'Cappucino',
                  coffeePrice: ' 8.10',
                ),
                CoffeeTile(
                  coffeeImagePath: 'assets/images/coff.jpeg',
                  coffeeName: 'Latte',
                  coffeePrice: ' 7.04',
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Special for you',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black38,
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            'assets/images/coff.jpeg',
                            height: 80,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 25.0),
                            child: Text(
                              '5 Coffee Beans You Must Try',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black38,
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/images/coff.jpeg',
                            height: 80,
                          ),
                        ),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 25.0),
                            child: Text(
                              '5 Coffee Beans You Must Try',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
