import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imageUrl;
  final trailingIcon;

  const MyListTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
    required this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(color: Colors.white),
          child: Image.asset(imageUrl),
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      subtitle: Text(subTitle),
      trailing: Icon(trailingIcon),
    );
  }
}
