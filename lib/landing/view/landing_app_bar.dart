import 'package:flutter/material.dart';

class LandingAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LandingAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("NopyJF Valorant Flutter"),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
