import 'package:flutter/material.dart';

import 'Register.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late String _username;
  late String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 90.0,
            ),
            children: <Widget>[
              Container(
                //user,pass,confirmasion
                child: Column(
                  children: [
                    Text(
                      'Iniciar sesion',
                      style: TextStyle(fontSize: 40.0),
                    ),
                    Divider(
                      color: Colors.transparent,
                      height: 20.0,
                    ),
                    TextField(
                      enableInteractiveSelection: false,
                      textCapitalization: TextCapitalization.characters,
                      decoration: InputDecoration(
                          hintText: 'Nombre De Usuario',
                          labelText: 'Nombre de Usuario',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          )),
                      onSubmitted: (valor) {
                        _username = valor;
                      },
                    ),
                    Divider(
                      color: Colors.transparent,
                      height: 20.0,
                    ),
                    TextField(
                      enableInteractiveSelection: false,
                      obscureText: true,
                      textCapitalization: TextCapitalization.characters,
                      decoration: InputDecoration(
                          hintText: 'Contraseña',
                          labelText: 'Contraseña',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          )),
                      onSubmitted: (valor) {
                        _password = valor;
                      },
                    ),
                    Divider(
                      color: Colors.transparent,
                      height: 20.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {},
                        child: Text('Iniciar Sesion'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  //botones inferiores del login
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Padding(padding: EdgeInsets.only(top: 500.0)),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                      onPressed: () {},
                      child: Center(
                          child: Text('Iniciar Sesion',
                              style: TextStyle(fontSize: 10.0))),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5.0)),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => (Register())),
                        );
                      },
                      child:
                          Text('Registrar', style: TextStyle(fontSize: 10.0)),
                    ),
                  ]))
            ],
          ),
        ));
  }
}
