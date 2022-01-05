import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'settings.dart';

class ProfilePage extends StatefulWidget {
  @override
   _ProfilePage createState() {
    return _ProfilePage();
  }
}

class _ProfilePage extends State<ProfilePage> {
  bool showPassword = false;

  get boxshape => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.white54,
        titleTextStyle: const TextStyle(fontSize: 30.0, color: Colors.white ),
        elevation: 1,        
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SettingsPage()));
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [              
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(                    
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs5Azv8erp-FKyJyj0Bs-pfviq0UlMXiWKcg&usqp=CAU'),
                        ),
                      ),
                    ),                    
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text("Mary Louis"),
              Text("MaryLouis@gmail.com"),
              Text("Trabzon,Turkey"),             
            ],
          ),
        ),
      ),
    );
  }

  Padding buildTextField(String labelText, String placeholder,
      bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}