import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nopy_valorant_flutter_app/core/my_core.dart';
import 'package:nopy_valorant_flutter_app/landing/landing.dart';

part 'landing_event.dart';

part 'landing_state.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  LandingBloc({
    required this.service,
  }) : super(const LandingState()) {
    on<LandingGetAgentEvent>(_getAgents);
  }

  Future<void> _getAgents(
    LandingGetAgentEvent event,
    Emitter<LandingState> emit,
  ) async {
    if (state.status == LandingStatus.loading) {
      var data = await service.getAgents();
      if (data.status == MyStatus.success) {
        _landingSuccess(emit, data.data);
      } else if (data.status == MyStatus.error) {
        _landingError(emit, data.error);
      }
    }
  }

  void _landingSuccess(Emitter<LandingState> emit, List<AgentData>? data) {
    emit(
      LandingState(
        status: LandingStatus.success,
        agents: data ?? const <AgentData>[],
      ),
    );
  }

  void _landingError(Emitter<LandingState> emit, String error) {
    emit(
      LandingState(
        status: LandingStatus.error,
        errMsg: error,
      ),
    );
  }

  final AgentService service;
}
