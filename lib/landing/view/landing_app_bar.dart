import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LandingAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "NopyJF Valorant Flutter",
        style: GoogleFonts.kanit(fontWeight: FontWeight.w500),
      ),
      backgroundColor: const Color(0xfffa4454),
      actions: [
        IconButton(
          onPressed: () {
            // do nothing
          },
          icon: const Icon(Icons.filter_list_outlined),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
