import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nopy_valorant_flutter_app/core/my_core.dart';

class LandingAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LandingAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        BaseLine.appName,
        style: GoogleFonts.kanit(fontWeight: FontWeight.w500),
      ),
      backgroundColor: MyColor.primary,
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
