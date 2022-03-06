import 'dart:async';
import 'package:redux/redux.dart';
import 'package:todoapp/store/app/app_state.dart';
import 'package:todoapp/store/app/app_reducer.dart';

Future<Store<AppState>> createStore() async {
  return Store(
    appReducer,
    initialState: AppState.initial(),
  );
}
