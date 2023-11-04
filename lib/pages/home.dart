import 'package:flutter/material.dart';
import 'package:new_api_v2/util/todo_tile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //list of todo tasks
    List toDoList = [
      ["Make Tutorial", false],
      ["Make Lunch", false]
    ];

    //checkbox was tapped
    void checkBoxChanged(bool? value, int index) {
      setState(() {

        toDoList[index][1] = !toDoList[index][1];

      });
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("TO DO"),
          scrolledUnderElevation: 0.0,
        ),
        body: ListView.builder(
            itemCount: toDoList.length,
            itemBuilder: (context, index) {
              return ToDoTile(
                  taskName: toDoList[index][0],
                  taskCompleted: toDoList[index][1],
                  onChanged: (value) =>
                      checkBoxChanged(value, index));
            }));
  }
}
