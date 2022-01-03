part of 'detail_bloc.dart';

abstract class DetailEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetDetailEvent extends DetailEvent { }
