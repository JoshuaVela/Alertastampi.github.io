import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auths/pages/loginScreen.dart';
import 'package:flutter_auths/pages/task2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'threadMain.dart';
import 'package:flutter_auths/pages/tasks.dart';
import 'commons/utils.dart';
import 'controllers/FBCloudMessaging.dart';
import 'threadMain.dart';
import 'package:flutter_auths/commons/const.dart';
import 'package:flutter_auths/userProfile.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:math';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
        accentColor: Colors.blue,
      ),
      home: HomePage(),
    );

  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final db = Firestore.instance;


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<FirebaseUser>(
      future: FirebaseAuth.instance.currentUser(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          FirebaseUser user = snapshot.data;
          return HomeScreen(uid: user.uid); //taskpage antes xd
        } else {
          return LoginScreen();
        }
      },
    );
  }
}
