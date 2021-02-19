import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class homePage extends StatefulWidget {

  final auth = FirebaseAuth.instance;

  String uid;
  homePage({Key key, @required this.uid}) : super(key : key);

  /*const homePage({Key key,
    @required this._uid
  }) : super(key: key);*/
  
  //String _uid = user.uid.toString();

  @override
  _homePageState createState() => _homePageState(uid);
}

class _homePageState extends State<homePage> {
  String uid;
  _homePageState(this.uid);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(uid),
      ),
    );
  }
}
