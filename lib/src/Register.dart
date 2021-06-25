import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Register> {
  late String _nombree;
  late String _apellido;
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
            children: [
              Column(
                children: [
                  Text(
                    'nombre',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 20.0,
                  ),
                  TextField(
                    enableInteractiveSelection: false,
                    textCapitalization: TextCapitalization.characters,
                    decoration: InputDecoration(
                        hintText: 'nombre',
                        labelText: 'nombre',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                    onSubmitted: (valor) {
                      _nombree = valor;
                    },
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 20.0,
                  ),
                  Text(
                    'Apellido',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 20.0,
                  ),
                  TextField(
                    enableInteractiveSelection: false,
                    textCapitalization: TextCapitalization.characters,
                    decoration: InputDecoration(
                        hintText: 'apellido',
                        labelText: 'apellido',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                    onSubmitted: (valor) {
                      _apellido = valor;
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
            ]),
      ),
    );
  }
}
