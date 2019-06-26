import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();

  String nama = "";
  String gambar = "";

  Future<FirebaseUser> _signIn() async {
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    FirebaseUser user = await firebaseAuth.signInWithGoogle(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    setState(() {
      nama = user.displayName;
      gambar = user.photoUrl;
    });

    _alertDialog();

    print("Nama User: ${user.displayName}");
    return user;
  }

  void _alertDialog() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Column(
          children: <Widget>[
            new Text("Sudah Login",
                style: new TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)),
            new Divider(),
            new ClipOval(child: new Image.network(gambar)),
            new Text("Hai $nama"),
            new RaisedButton(
              child: new Text("OK"),
              onPressed: () => Navigator.pop(context),
              color: Colors.green,
            )
          ],
        ),
      ),
    );
    showDialog(context: context, child: alertDialog);
  }

  void _signOut() {
    googleSignIn.signOut();
    print("Anda Telah Keluar");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Login Firebase"),
        backgroundColor: Colors.blue[700],
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Center(
          child: Column(
            children: <Widget>[
              new RaisedButton(
                  onPressed: () =>
                      _signIn().then((FirebaseUser user) => print(user)),
                  color: Colors.red[700],
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Icon(Icons.developer_board),
                      new Text("Google Login",
                          style: new TextStyle(fontSize: 20.0))
                    ],
                  )),
              new RaisedButton(
                  onPressed: () => _signOut(),
                  color: Colors.green[700],
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Icon(Icons.cancel),
                      new Text("SignOut", style: new TextStyle(fontSize: 20.0))
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
