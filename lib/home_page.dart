import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            children: [
              Text(
                'Attendence Managament System',
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),

              ),
              SizedBox(width: 20,),
              MaterialButton(onPressed: (){
                FirebaseAuth.instance.signOut();
              },child: Text(
                'Sign Out',
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                ),

              ),),
            ],

          ),

        ),


        backgroundColor:Colors.deepPurple,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Signed in as: ' + user.email!),
            ),

          ],
        ),
      ),
    );
  }
}
