part of 'detail_bloc.dart';

abstract class DetailEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetDetailEvent extends DetailEvent {
  late final AgentData agent;

  GetDetailEvent({required this.agent});

  @override
  List<Object> get props => [agent];
}
