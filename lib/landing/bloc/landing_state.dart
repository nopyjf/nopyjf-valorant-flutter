part of 'landing_bloc.dart';

abstract class LandingState extends Equatable {
  const LandingState();
}

class LandingInitial extends LandingState {
  @override
  List<Object> get props => [];
}
