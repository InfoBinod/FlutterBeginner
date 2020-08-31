import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Home(),
    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Login',
        ),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Form(
            key: _globalKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _emailController,
                  autocorrect: true,
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) => value.isEmpty ? "email is empty" : null,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 50.0),
                TextFormField(
                  controller: _passwordController,
                  autofocus: true,
                  autocorrect: true,
                  maxLength: 10,
                  obscureText: true,
                  validator: (value) =>
                      value.isEmpty ? "password is empty" : null,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 50.0,
                ),
                RaisedButton(
                  color: Colors.teal[300],
                  textColor: Colors.white,
                  onPressed: () {
                    if (_globalKey.currentState.validate()) {}
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
