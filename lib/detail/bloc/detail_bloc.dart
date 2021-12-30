import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nopy_valorant_flutter_app/model/agent.dart';

part 'detail_event.dart';

part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final AgentData agent;

  DetailBloc({
    required this.agent,
  }) : super(const DetailState()) {
    on<DetailEvent>(_getAgentData);
  }

  Future<void> _getAgentData(
    DetailEvent event,
    Emitter<DetailState> emit,
  ) async {
    emit(DetailState(agent: agent));
  }
}
