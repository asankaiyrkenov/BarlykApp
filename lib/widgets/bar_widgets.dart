import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BarWidgets extends StatelessWidget {
  IconData icon;
  String title;
  BarWidgets({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: MediaQuery.of(context).size.width * 0.02, top: 10),
      padding: EdgeInsets.symmetric(vertical: 15),
      height: 80,
      width: MediaQuery.of(context).size.width * 0.23,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Icon(icon), Text(title)],
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey[300]!,
          offset: Offset(5.0, 5.0),
          blurRadius: 10.0,
        )
      ], color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
    );
  }
}
