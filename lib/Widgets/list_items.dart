import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/Utils/theme.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 15),
        onTap: () {},
        tileColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        leading: Icon(Icons.check_box, color: MyTheme().tdBlue),
        title: Text(
          "TOdo task 1",
          style: TextStyle(
            color: Colors.black,
            fontSize: 13,
          ),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: MyTheme().tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            icon: Icon(
              Icons.delete,
            ),
            iconSize: 18,
            color: Colors.white,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
