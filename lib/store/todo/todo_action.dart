import 'package:todoapp/models/todo.dart';

class AddTodoAction{
  Todo todo;
  AddTodoAction(this.todo);
}


class DeleteTodoAction{
  int id ;
  DeleteTodoAction(this.id);
}