import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  final String imageUrl;

  const DetailAppBar({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 56,
        ),
        Image.network(imageUrl),
      ],
    );
  }
}
