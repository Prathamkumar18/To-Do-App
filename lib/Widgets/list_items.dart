// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_3/Utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import '../Model/todo.dart';

class ToDoItem extends StatelessWidget {
  final Todo todo;
  final change;
  final delete;
  const ToDoItem({
    Key? key,
    required this.todo,
    required this.change,
    required this.delete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 15),
        onTap: () {
          change(todo);
        },
        tileColor: context.cardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        leading: Icon(
            (todo.isDone) ? Icons.check_box : Icons.check_box_outline_blank,
            color: MyTheme.tdBlue),
        title: Text(
          "${todo.text}",
          style: TextStyle(
            color: context.accentColor,
            fontSize: 13,
          ),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: MyTheme.tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            icon: Icon(
              Icons.delete,
            ),
            iconSize: 18,
            color: Colors.white,
            onPressed: () {
              delete(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
