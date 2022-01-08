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
          Expanded(
            flex: MyCount.count3,
            child: const SizedBox(),
          ),
          Expanded(
            flex: MyCount.count4,
            child: ConstrainedBox(
                constraints: const BoxConstraints.expand(),
                child: Container(
                  decoration: _contentBoxDecoration(),
                  child: _agentData(state),
                )),
          ),
        ],
      );
    });
  }

  Widget _agentData(DetailState state) {
    return Column(
      children: [
        _agentName(state.agent?.displayName ?? BaseLine.empty),
        _agentRole(state.agent?.role),
        _agentDetail(
          state.agent?.description ?? BaseLine.empty,
        ),
        _skillLabel(),
        DetailSkillListView(data: state.agent?.abilities ?? [])
      ],
    );
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
      padding: EdgeInsets.only(
        top: MySize.size24,
        left: MySize.size32,
        right: MySize.size32,
      ),
      child: Text(
        name,
        style: GoogleFonts.kanit(
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontSize: MySize.size36,
        ),
      ),
    );
  }

  Widget _agentRole(Role? role) {
    return Container(
      padding: EdgeInsets.only(
        left: MySize.size32,
        right: MySize.size32,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            role?.displayIcon ?? BaseLine.empty,
            width: MySize.size24,
            height: MySize.size24,
          ),
          Container(
            padding: EdgeInsets.only(left: MySize.size8),
            child: Text(
              role?.displayName ?? BaseLine.empty,
              style: GoogleFonts.kanit(
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontSize: MySize.size24,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _agentDetail(String data) {
    return Container(
      padding: EdgeInsets.only(
        top: MySize.size8,
        bottom: MySize.size16,
        left: MySize.size32,
        right: MySize.size32,
      ),
      child: Text(
        data,
        style: GoogleFonts.kanit(
          height: MySize.size2,
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: MySize.size12,
        ),
      ),
    );
  }

  Widget _skillLabel() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(
        top: MySize.size24,
        left: MySize.size32,
        right: MySize.size32,
      ),
      child: Text(
        BaseLine.detailSkill,
        style: GoogleFonts.kanit(
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: MySize.size24,
        ),
      ),
    );
  }
}
