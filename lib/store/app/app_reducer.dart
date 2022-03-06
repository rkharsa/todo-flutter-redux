import 'package:todoapp/store/todo/todo_reducer.dart';

import 'app_state.dart';

AppState appReducer(AppState state, dynamic action) =>
    new AppState(
      todoState: todoReducer(state.todoState,action)
    );