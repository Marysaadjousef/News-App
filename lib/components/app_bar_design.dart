import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppBarComponent({
    super.key,
    required this.word1,
    required this.word2,
  });

  final String word1;
  final String word2;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      shadowColor: Colors.white,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            word1,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            word2,
            style: const TextStyle(
                color: Colors.orange, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56.0);
}
