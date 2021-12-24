import 'package:flutter/material.dart';

import '../landing.dart';

class LandingAgentList extends StatelessWidget {
  final List<AgentData> data;

  const LandingAgentList({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          children: [
            Image.network(
              data[index].displayIcon ?? "",
              width: 96,
              height: 96,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data[index].displayName ?? ""),
                  Text(
                    data[index].description ?? "",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text("Role: ${data[index].role?.displayName ?? ""}")
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
