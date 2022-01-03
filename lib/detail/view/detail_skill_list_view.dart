import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nopy_valorant_flutter_app/model/agent.dart';

class DetailSkillListView extends StatelessWidget {
  final List<Ability> data;

  const DetailSkillListView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(data.toString());

    return SizedBox(
      height: 100,
      child: ListView.separated(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 8,
            bottom: 8,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          separatorBuilder: (BuildContext context, int index) {
            return const Padding(
              padding: EdgeInsets.only(right: 16),
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.only(
                left: 12,
                right: 12,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Row(
                children: [
                  Image.network(
                    data[index].displayIcon,
                    width: 48,
                    height: 48,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                  ),
                  Text(
                    data[index].displayName,
                    style: GoogleFonts.kanit(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
