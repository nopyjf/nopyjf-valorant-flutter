import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nopy_valorant_flutter_app/core/my_core.dart';
import 'package:nopy_valorant_flutter_app/model/agent.dart';

class DetailSkillListView extends StatelessWidget {
  final List<Ability> data;

  const DetailSkillListView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MySize.size100,
      child: ListView.separated(
          padding: EdgeInsets.only(
            left: MySize.size16,
            right: MySize.size16,
            top: MySize.size8,
            bottom: MySize.size8,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          separatorBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(right: MySize.size16),
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.only(
                left: MySize.size12,
                right: MySize.size12,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(MySize.size5),
                ),
              ),
              child: Row(
                children: [
                  Image.network(
                    data[index].displayIcon,
                    width: MySize.size48,
                    height: MySize.size48,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: MySize.size16),
                  ),
                  Text(
                    data[index].displayName,
                    style: GoogleFonts.kanit(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: MySize.size12,
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
