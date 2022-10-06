import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/theme.dart';
import '../Widgets/list_items.dart';
import '../Widgets/search.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme().tdBGColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: MyTheme().tdBGColor,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Icon(
            Icons.menu,
            color: MyTheme().tdBlack,
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
            Search(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  children: [
                    Container(
                      child: Text(
                        "All ToDo's",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 35),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ToDoItem(),
                    ToDoItem(),
                    ToDoItem(),
                    ToDoItem(),
                    ToDoItem(),
                    ToDoItem(),
                    ToDoItem(),
                    ToDoItem(),
                    ToDoItem(),
                    ToDoItem(),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
