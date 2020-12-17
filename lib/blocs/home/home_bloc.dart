import 'dart:async';

import 'package:bloc/bloc.dart';

import 'home.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  HomeState get initialState => HomeInitial();

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is HomeButtonPressed) {
      yield HomeLoading();

      try {
        yield HomeInitial();
      } catch (error) {
        yield HomeFailure(error: error.toString());
      }
    }
  }
}
