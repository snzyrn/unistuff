import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'settings.dart';
import 'edit.dart';

class ProfilePage extends StatelessWidget {
  @override
   Widget build(BuildContext context){
     return Column(
       children: [
         ProfilePic(),
         SizedBox(height: 20),
         Info(),
         Menu(
           text: "Profile Edit",
           press: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => EditProfilePage()));
           },
         ),
         Menu(
           text: "Settings",
           press: () {
             Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SettingsPage()));
           },
         ),
         Menu(
           text: "Help Center",
           press: () {},
         ),
          Menu(
           text: "Log Out",
           press: () {},
         ),
       ] 
     );
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 150,
     width: 150,
     child: CircleAvatar(backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs5Azv8erp-FKyJyj0Bs-pfviq0UlMXiWKcg&usqp=CAU'),
       radius: 50,
       ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
    required this.press,
    required this.text,
  }) : super(key: key);

  final String text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: press,
        child: Row(
          children: [
            Icon(Icons.circle),
            SizedBox(width: 30,),
            Expanded(child: Text(text,style: Theme.of(context).textTheme.bodyText1,)),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
        ),
      );
  }
}

class Info extends StatelessWidget{
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(), //             <--- BoxDecoration here
            child: Text(
            "User Name",
            style: TextStyle(fontSize: 30.0),
    ),
          ),
          Container(
            margin: const EdgeInsets.all(0.0),
            padding: const EdgeInsets.all(0.0),
            decoration: BoxDecoration(), //             <--- BoxDecoration here
            child: Text(
            "City",
            style: TextStyle(fontSize: 20.0),
          ),),
        ],
      )
    );
  }
}
