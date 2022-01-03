import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nopy_valorant_flutter_app/core/my_core.dart';
import 'package:nopy_valorant_flutter_app/detail/detail.dart';
import 'package:nopy_valorant_flutter_app/model/agent.dart';

import 'detail_view.dart';

class DetailContent extends StatelessWidget {
  const DetailContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailBloc, DetailState>(builder: (_, state) {
      return Column(
        children: [
          const Expanded(
            flex: 3,
            child: SizedBox(),
          ),
          Expanded(
            flex: 4,
            child: ConstrainedBox(
              constraints: const BoxConstraints.expand(),
              child: Container(
                decoration: _contentBoxDecoration(),
                child: Column(
                  children: [
                    _agentName(state.agent?.displayName ?? ""),
                    _agentRole(state.agent?.role),
                    _agentDetail(
                      state.agent?.description ?? "",
                    ),
                    _skillLabel(),
                    DetailSkillListView(data: state.agent?.abilities ?? [])
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    });
  }

  BoxDecoration _contentBoxDecoration() {
    return BoxDecoration(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      color: MyColor.backGround,
    );
  }

  Widget _agentName(String name) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(
        top: 24,
        left: 32,
        right: 32,
      ),
      child: Text(
        name,
        style: GoogleFonts.kanit(
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontSize: 36,
        ),
      ),
    );
  }

  Widget _agentRole(Role? role) {
    return Container(
      padding: const EdgeInsets.only(
        left: 32,
        right: 32,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            role?.displayIcon ?? "",
            width: 24,
            height: 24,
          ),
          Container(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              role?.displayName ?? "",
              style: GoogleFonts.kanit(
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _agentDetail(String data) {
    return Container(
      padding: const EdgeInsets.only(
        top: 8,
        bottom: 16,
        left: 32,
        right: 32,
      ),
      child: Text(
        data,
        style: GoogleFonts.kanit(
          height: 2,
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }

  Widget _skillLabel() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(
        top: 24,
        left: 32,
        right: 32,
      ),
      child: Text(
        "Skill",
        style: GoogleFonts.kanit(
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 24,
        ),
      ),
    );
  }
}
