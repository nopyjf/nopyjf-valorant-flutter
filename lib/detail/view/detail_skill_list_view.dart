import 'package:flutter/material.dart';
import 'package:nopy_valorant_flutter_app/model/agent.dart';

class DetailSkillListView extends StatelessWidget {
  final List<Ability> data;

  const DetailSkillListView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.only(
        left: 16,
      ),
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                  top: 14,
                  bottom: 14,
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
                    Text(data[index].displayName)
                  ],
                ),
              ),
            );
          }),
    );
  }
}
