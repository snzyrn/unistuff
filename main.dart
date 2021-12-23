import 'package:flutter/material.dart';
import 'package:unistaff_settings_project/edit.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends
StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UniStaff',
      home: EditProfilePage(),
    );
  }
}

