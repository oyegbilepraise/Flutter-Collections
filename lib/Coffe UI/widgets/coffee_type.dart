import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeeType;
  final bool isSelected;
  final VoidCallback onTap;
  const CoffeeType(
      {Key? key,
      required this.coffeeType,
      required this.isSelected,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Column(
          children: [
            Text(
              coffeeType,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.orange : Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              child: isSelected
                  ? Container(
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                      ),
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
