import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {

    final judul = Text(
      'LOGIN'
    );

    final username = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: '',
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
      keyboardType: TextInputType.visiblePassword,
      autofocus: false,
      initialValue: '',
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
      onPressed: (){},
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