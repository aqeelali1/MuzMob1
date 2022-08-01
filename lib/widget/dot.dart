// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class dot extends StatelessWidget {
  int index;
  int active;
  dot({
    Key? key,
    required this.index,
    required this.active,
  }) : super(key: key);
  @override
  Widget build(Object context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 500),
      curve: Curves.easeInOut,
      height: index == active ? 20 : 10,
      width: 10,
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: index == active
              ? Color.fromARGB(255, 117, 123, 133)
              : Color.fromARGB(255, 156, 159, 164),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
