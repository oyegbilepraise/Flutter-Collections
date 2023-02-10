import 'package:flutter/material.dart';
import 'package:online_shop/Wallet%20App/widgets/my_button.dart';
import 'package:online_shop/Wallet%20App/widgets/my_card.dart';
import 'package:online_shop/Wallet%20App/widgets/my_list_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: const Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pink[200],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: const [
                  MyCard(
                    balance: 5324.12,
                    cardNumber: 1234567890,
                    expiryMonth: 12,
                    expiryYear: 24,
                    color: Colors.deepPurple,
                  ),
                  MyCard(
                    balance: 2210.14,
                    cardNumber: 1234567890,
                    expiryMonth: 07,
                    expiryYear: 30,
                    color: Colors.blue,
                  ),
                  MyCard(
                    balance: 5324.110,
                    cardNumber: 1234567890,
                    expiryMonth: 03,
                    expiryYear: 29,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MyButton(
                    iconImagePath: 'assets/icons/send-money.png',
                    buttonText: 'Send',
                  ),
                  MyButton(
                    iconImagePath: 'assets/icons/credit-card.png',
                    buttonText: 'Pay',
                  ),
                  MyButton(
                    iconImagePath: 'assets/icons/bill.png',
                    buttonText: 'Bills',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Column(
              children: const [
                MyListTile(
                  title: 'Statistics',
                  subTitle: 'Payment and Incomes',
                  imageUrl: 'assets/icons/statistics.png',
                  trailingIcon: Icons.chevron_right,
                ),
                SizedBox(height: 10),
                MyListTile(
                  title: 'Transactions',
                  subTitle: 'Transactions History',
                  imageUrl: 'assets/icons/transaction.png',
                  trailingIcon: Icons.chevron_right,
                ),
                SizedBox(height: 10),
                MyListTile(
                  title: 'Cards',
                  subTitle: 'Transactions History',
                  imageUrl: 'assets/icons/credit-card.png',
                  trailingIcon: Icons.chevron_right,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
