import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nopy_valorant_flutter_app/core/my_core.dart';
import 'package:nopy_valorant_flutter_app/detail/detail.dart';
import 'package:nopy_valorant_flutter_app/model/agent.dart';

import 'detail_view.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AgentData data = ModalRoute.of(context)?.settings.arguments as AgentData;

    return _DetailPage(data: data);
  }
}

class _DetailPage extends StatelessWidget {
  final AgentData data;

  const _DetailPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: MyColor.primary,
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            DetailAppBar(bustPortrait: data.bustPortrait),
            DetailContent(data: data),
          ],
        ),
      ),
    );
  }
}
