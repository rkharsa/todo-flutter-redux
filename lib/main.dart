import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todoapp/store/app/app_state.dart';
import 'package:todoapp/store/store.dart';
import 'package:todoapp/ui/todoslist/todoslist_view.dart';

void main() async {
  var store = await createStore();
  runApp(new MyApp(store));
}

class MyApp extends StatefulWidget {

  final Store<AppState> store;

  MyApp(this.store);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {

    return new  StoreProvider<AppState>(
      store: widget.store,
      child:MaterialApp(
      title: 'Flutter Demo',
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => TodosListView(),

        },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

    )
    );
  }

}

