import 'package:meta/meta.dart';
import 'package:todoapp/store/todo/todo_state.dart';

@immutable
class AppState{

  final TodoState todoState;
  AppState({@required this.todoState});

  factory AppState.initial(){
    return AppState(
        todoState: TodoState.initial()
    );
  }

  AppState copyWith({TodoState todoState}){
    return AppState(
        todoState: todoState ?? this.todoState
    );
  }

}