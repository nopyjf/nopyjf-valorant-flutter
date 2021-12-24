part of 'landing_bloc.dart';

enum LandingStatus { loading, success, error }

class LandingState extends Equatable {
  const LandingState({
    this.status = LandingStatus.loading,
    this.agents = const <AgentData>[],
    this.errMsg = "",
  });

  final LandingStatus status;
  final List<AgentData> agents;
  final String errMsg;

  @override
  List<Object> get props => [status, agents, errMsg];
}
