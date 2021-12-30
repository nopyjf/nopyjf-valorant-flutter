part of 'detail_bloc.dart';

class DetailState extends Equatable {
  final AgentData? agent;

  const DetailState({this.agent});

  @override
  List<Object?> get props => [agent];
}
