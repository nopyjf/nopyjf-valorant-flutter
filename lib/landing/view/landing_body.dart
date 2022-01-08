import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nopy_valorant_flutter_app/core/my_core.dart';
import 'package:nopy_valorant_flutter_app/landing/landing.dart';

class LandingBody extends StatelessWidget {
  const LandingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LandingBloc, LandingState>(
      builder: (_, state) {
        switch (state.status) {
          case LandingStatus.loading:
            return Text(BaseLine.loading);
          case LandingStatus.success:
            return LandingAgentList(data: state.agents);
          case LandingStatus.error:
            return Text(state.errMsg);
        }
      },
    );
  }
}
