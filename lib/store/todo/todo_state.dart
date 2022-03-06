import 'package:flutter/cupertino.dart';
import 'package:todoapp/enums/state.dart' as State;
import 'package:todoapp/models/todo.dart';

@immutable
class TodoState {
  final List<Todo> todos;

  TodoState({
    @required this.todos,
  });

  factory TodoState.initial(){
    return new TodoState(
        todos: [new Todo(1,"test titre","description",State.State.DONE)]
    );

  }

  TodoState copyWith({
    List<Todo> todos
  }){
    return new TodoState(
        todos: todos ?? this.todos,
    );
  }
}