import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../landing.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          LandingBloc(service: AgentService())..add(LandingGetAgentEvent()),
      child: const _LandingView(),
    );
  }
}

class _LandingView extends StatelessWidget {
  const _LandingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: LandingAppBar(),
      body: LandingBody(),
    );
  }
}
