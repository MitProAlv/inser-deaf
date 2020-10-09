import 'package:Inserdeaf/pages/registerDeaf.dart';
import 'package:flutter/material.dart';
import 'login/login.dart';
import 'package:Inserdeaf/data/dao/user_dao.dart';
import 'package:Inserdeaf/data/dao/interpreter_dao.dart';

UserDao userDao = UserDao();
InterpreterDao intepreterDao = InterpreterDao();

class PrimaryScreen extends StatefulWidget {

  final UserDao userDao;
  final InterpreterDao interpreterDao;

  PrimaryScreen({
    this.userDao,
    this.interpreterDao,
  });
  @override
  _PrimaryScreenState createState() => _PrimaryScreenState();
}

class _PrimaryScreenState extends State<PrimaryScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      body: ListView(padding: EdgeInsets.all(28.0), children: <Widget>[
        SizedBox(
          height: 50.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Text(
              "Login",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            textColor: Colors.blueGrey[900],
            color: Colors.blue[200],
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen(userDao: userDao, interpreterDao: intepreterDao)),
              );
            },
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        SizedBox(
          height: 50.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Text(
              "Cadastrar Interprete",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            textColor: Colors.blueGrey[900],
            color: Colors.green[200],
            onPressed: () {},
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        SizedBox(
          height: 50.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Text(
              "Cadastrar Surdo",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            textColor: Colors.blueGrey[900],
            color: Colors.pink[200],
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterDeaf()),
              );
            },
          ),
        )
      ]),
    );
  }
}