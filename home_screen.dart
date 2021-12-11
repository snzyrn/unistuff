import 'package:first_unistaff_project/main.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        verticalDirection: VerticalDirection.up,
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 50.0,
            width: 350.0,
            decoration: new BoxDecoration(
              color: Colors.grey,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(50.0),
                topRight: const Radius.circular(50.0),
                bottomLeft: const Radius.circular(50.0),
                bottomRight: const Radius.circular(50.0),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            width: 350.0,
            height: 50.0,
            decoration: new BoxDecoration(
              color: Colors.grey,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(50.0),
                topRight: const Radius.circular(50.0),
                bottomLeft: const Radius.circular(50.0),
                bottomRight: const Radius.circular(50.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
