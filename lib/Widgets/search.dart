// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_3/Pages/homepage.dart';

import '../Utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';


class Search extends StatelessWidget {
  final st;
  const Search({
    Key? key,
    required this.st,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        color: context.cardColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextField(
        onChanged: ((value) {
          st(value);
        }),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0.0),
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: context.accentColor,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: "Search",
          hintStyle: TextStyle(color: context.accentColor),
        ),
      ),
    );
  }
}
