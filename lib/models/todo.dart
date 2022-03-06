import 'package:todoapp/enums/state.dart';

class Todo{
  int id;
  String description;
  String name;
  State state;
  Todo(this.id,this.name,this.description,this.state);
}