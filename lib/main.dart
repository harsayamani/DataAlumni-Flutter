import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

void main() => runApp(new DataAlumni());

class DataAlumni extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Login Page",
      home: new DataAlumniHomePage(),
    );
  }
}

class DataAlumniHomePage extends StatefulWidget{
  @override
  _DataAlumniHomePage createState() => _DataAlumniHomePage();
}

class _DataAlumniHomePage extends State<DataAlumniHomePage>{

  TextEditingController user = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  Future<List> _login() async {
    final response = await http.post("http://localhost/KEPL/api/login.php", body:{
        "username":user.text,
        "password":pass.text,
      }
    );

    print(response.body);
  } 

  @override
  Widget build(BuildContext context) {

    final judul = Center(
      child: Text(
      'LOGIN', style: TextStyle(fontSize: 30),
      ),
    );

    final username = TextFormField(
      controller: user,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: "Masukkan Username",
        contentPadding: EdgeInsets.fromLTRB(
          20.0, 10.0, 20.0, 10.0
          ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0)
        ),
      ),
    );

    final password = TextFormField(
      controller: pass,
      keyboardType: TextInputType.visiblePassword,
      autofocus: false,
      decoration: InputDecoration(
        hintText: "Masukkan Password",
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0)
        )
      ),
    );

    final loginSubmit = RaisedButton(
      color: Colors.blue,
      child: Text(
        'Login', style: TextStyle(color: Colors.white),
      ),
      onPressed: (){
        _login();
      },
    );
    
    
    return Scaffold(
      appBar: AppBar(title: Text('Data Alumni Login'),),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(
            left: 24.0, right: 24.0
          ),
          children: <Widget>[
            judul,
            SizedBox(height: 24.0,),
            username,
            SizedBox(height: 8.0,),
            password,
            SizedBox(height: 24.0,),
            loginSubmit
          ],
        ),

      )
    );
  }
}