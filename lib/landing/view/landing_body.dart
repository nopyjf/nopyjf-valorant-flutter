import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../landing.dart';

class LandingBody extends StatelessWidget {
  const LandingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LandingBloc, LandingState>(
      builder: (_, state) {
        switch (state.status) {
          case LandingStatus.loading:
            return const Text("Loading");
          case LandingStatus.success:
            return const Text("Success");
          case LandingStatus.error:
            return Text(state.errMsg);
        }
      },
    );
  }
}
