import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(Icons.grid_view_rounded),
      actions: [
        Container(
          // margin: EdgeInsets.only(right: 20),
          padding: const EdgeInsets.all(10),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://res.cloudinary.com/praisecloud/image/upload/v1675345645/1674679168131_qdiar0.jpg'),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
