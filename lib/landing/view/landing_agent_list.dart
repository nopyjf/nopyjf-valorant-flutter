import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../landing.dart';

class LandingAgentList extends StatelessWidget {
  final List<AgentData> data;

  const LandingAgentList({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      decoration: const BoxDecoration(color: Color(0xFF0C1824)),
      child: GridView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return _agentItem(index);
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          crossAxisCount: 2,
        ),
      ),
    );
  }

  Widget _agentName(int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Text(
        data[index].displayName ?? "",
        style: GoogleFonts.kanit(
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _agentRole(int index) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Image.network(
        data[index].role?.displayIcon ?? "",
        width: 16,
        height: 16,
      ),
    );
  }

  Widget _agentDataTab(int index) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: const BoxDecoration(color: Color(0x61000000)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _agentName(index),
            _agentRole(index),
          ],
        ),
      ),
    );
  }

  Widget _agentSpacing() {
    return const Expanded(
      flex: 3,
      child: SizedBox(),
    );
  }

  Widget _agentItem(int index) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          data[index].displayIcon ?? "",
          fit: BoxFit.fill,
        ),
        Column(
          children: [
            _agentSpacing(),
            _agentDataTab(index),
          ],
        )
      ],
    );
  }
}
