import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nopy_valorant_flutter_app/core/my_core.dart';
import 'package:nopy_valorant_flutter_app/landing/landing.dart';

class LandingAgentList extends StatelessWidget {
  final List<AgentData> data;

  const LandingAgentList({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MySize.size16,
        vertical: MySize.size16,
      ),
      decoration: BoxDecoration(color: MyColor.backGround),
      child: GridView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return _agentItem(index);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: MySize.size8,
          mainAxisSpacing: MySize.size8,
          crossAxisCount: MyCount.count2,
        ),
      ),
    );
  }

  Widget _agentName(int index) {
    return Padding(
      padding: EdgeInsets.only(left: MySize.size8),
      child: Text(
        data[index].displayName,
        style: GoogleFonts.kanit(
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: MySize.size16,
        ),
      ),
    );
  }

  Widget _agentRole(int index) {
    return Padding(
      padding: EdgeInsets.only(right: MySize.size8),
      child: Image.network(
        data[index].role?.displayIcon ?? "",
        width: MySize.size16,
        height: MySize.size16,
      ),
    );
  }

  Widget _agentDataTab(int index) {
    return Expanded(
      flex: MyCount.count1,
      child: Container(
        decoration: BoxDecoration(color: MyColor.agentTab),
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
    return Expanded(
      flex: MyCount.count3,
      child: const SizedBox(),
    );
  }

  Widget _agentItem(int index) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          data[index].displayIcon,
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
