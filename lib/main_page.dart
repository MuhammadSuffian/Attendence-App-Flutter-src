import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:loginui/home_page.dart';
import 'package:loginui/login_page.dart';

import 'Home_Pages.dart';

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            return home_pages();
          }
          else{
            return LoginPage();
          }
        },
      ),
    );
  }

}