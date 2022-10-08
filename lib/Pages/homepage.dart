// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/todo.dart';
import '../Utils/theme.dart';
import '../Widgets/list_items.dart';
import '../Widgets/search.dart';
import 'package:velocity_x/velocity_x.dart';

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final todolist = Todo.itemlist();
  final textcontroller = TextEditingController();
  List<Todo> found = [];
  @override
  void initState() {
    found = todolist;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        elevation: 0.0,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Icon(
            Icons.menu,
            color: context.accentColor,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "Assets/Images/prof.png",
              height: 40,
              width: 40,
            ),
          ),
        ]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            child: Column(
          children: [
            Search(st: search),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  children: [
                    Container(
                      child: Text(
                        "All ToDo's",
                        style: TextStyle(
                            color: context.accentColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 35),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    for (Todo x in found.reversed)
                      ToDoItem(
                        todo: x,
                        change: isChange,
                        delete: isDelete,
                      ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
              height: 60,
              decoration: BoxDecoration(
                color: context.cardColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textcontroller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0.0),
                    hintText: "Enter the task.",
                    hintStyle: TextStyle(color: MyTheme.tdGrey),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      padding: EdgeInsets.only(bottom: 2, left: 2, right: 2),
                      onPressed: () {
                        addItems(textcontroller.text.toString());
                      },
                      icon: Icon(
                        CupertinoIcons.add_circled_solid,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }

  void search(String s) {
    List<Todo> res = [];
    if (s.isEmpty) {
      res = todolist;
    } else {
      res = todolist
          .where((item) => item.text!.toLowerCase().contains(s.toLowerCase()))
          .toList();
    }
    setState(() {
      found = res;
    });
  }

  void addItems(String str) {
    setState(() {
      if (str == "")
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Text field can't be empty"),
        ));
      else {
        todolist.add(Todo(
            id: DateTime.now().microsecondsSinceEpoch.toInt(),
            text: str,
            isDone: false));
      }
      textcontroller.clear();
    });
  }

  void isChange(Todo x) {
    setState(() {
      x.isDone = !x.isDone;
    });
  }

  void isDelete(int id) {
    setState(() {
      todolist.removeWhere((element) => element.id == id);
    });
  }
}
