import 'package:flutter/material.dart';
import 'package:online_shop/Daily%20Exercise/constants.dart';

class SessionCard extends StatelessWidget {
  final int sessionNum;
  final bool isDone;
  final VoidCallback? press;
  const SessionCard({
    Key? key,
    required this.sessionNum,
    this.isDone = false,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Container(
        width: constraint.maxWidth / 2 - 10,
        // padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 23,
              spreadRadius: -13,
              color: kShadowColor,
            )
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      color: isDone ? kBlueColor : Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: kBlueColor),
                    ),
                    child: Icon(Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Section $sessionNum',
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
