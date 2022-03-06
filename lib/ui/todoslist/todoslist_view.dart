import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todoapp/store/app/app_state.dart';
import 'package:todoapp/ui/todoslist/todoslist_viewmodel.dart';

class TodosListView extends StatefulWidget{
  @override
  _TodosListViewState createState() => _TodosListViewState();

}

class _TodosListViewState extends State<TodosListView>{
  @override
  Widget build(BuildContext context) => new Scaffold(
    body: Container(
      child: new StoreConnector<AppState,TodosListViewModel>(
        builder:(_, viewModel) => content(viewModel) ,
          converter: (store) => TodosListViewModel.fromStore(store)),
      ),
    );

  Widget content(TodosListViewModel viewModel) => new Container(
    child: ListView.builder(
      itemCount: viewModel.todos.length,
      itemBuilder: (BuildContext context,int index){
        return Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.arrow_drop_down_circle),
                title:  Text(viewModel.todos[index].name),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                 viewModel.todos[index].description,
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  FlatButton(
                    textColor: const Color(0xFF6200EE),
                    onPressed: () {
                      // Perform some action
                    },
                    child: const Text('ACTION 1'),
                  ),
                  FlatButton(
                    textColor: const Color(0xFF6200EE),
                    onPressed: () {
                      // Perform some action
                    },
                    child: const Text('ACTION 2'),
                  ),
                ],
              )
            ],
          ),
        );
      },
    ),
  );
}