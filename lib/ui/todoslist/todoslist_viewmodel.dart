import 'package:redux/redux.dart';
import 'package:todoapp/models/todo.dart';
import 'package:todoapp/store/app/app_state.dart';
import 'package:todoapp/store/todo/todo_action.dart';
import 'package:todoapp/store/todo/todo_selector.dart';

class TodosListViewModel{

  final List<Todo> todos;

  TodosListViewModel({this.todos});

  static TodosListViewModel fromStore(Store<AppState> store){
    return TodosListViewModel(
      todos: todosSelectors(store.state.todoState)
    );
  }
}