import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nopy_valorant_flutter_app/core/my_core.dart';

import 'detail_view.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: MyColor.primary,
        ),
        child: Stack(
          fit: StackFit.expand,
          children: const [
            DetailAppBar(
              imageUrl:
                  "https://media.valorant-api.com/agents/22697a3d-45bf-8dd7-4fec-84a9e28c69d7/bustportrait.png",
            ),
            DetailContent()
          ],
        ),
      ),
    );
  }
}
