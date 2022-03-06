import 'package:redux/redux.dart';
import 'package:todoapp/store/todo/todo_action.dart';
import 'package:todoapp/store/todo/todo_state.dart';

final todoReducer = combineReducers<TodoState>([
  TypedReducer<TodoState,AddTodoAction>(_addTodo),
  TypedReducer<TodoState,DeleteTodoAction>(_deleteTodo)
]);

TodoState _addTodo(TodoState state, AddTodoAction action){
  return state.copyWith(todos: state.todos..add(action.todo));
}
TodoState _deleteTodo(TodoState state, DeleteTodoAction action){
  int index = state.todos.indexWhere((element) => element.id==action.id);
  return state.copyWith(todos: state.todos..removeAt(index));
}