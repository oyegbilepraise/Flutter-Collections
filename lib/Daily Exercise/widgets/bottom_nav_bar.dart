
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/Daily%20Exercise/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          BottomNavItem(
            srcSvg: 'assets/icons/calendar.svg',
            title: 'Today',
          ),
          BottomNavItem(
            srcSvg: 'assets/icons/gym.svg',
            title: 'All exercise',
            isActive: true,
          ),
          BottomNavItem(
            srcSvg: 'assets/icons/Settings.svg',
            title: 'Settings',
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String srcSvg;
  final String title;
  final VoidCallback? press;
  final bool isActive;
  const BottomNavItem(
      {Key? key,
        required this.srcSvg,
        required this.title,
        this.press,
        this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          SvgPicture.asset(
              srcSvg,
              color: isActive ? kActiveIconColor : kTextColor
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}