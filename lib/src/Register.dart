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
              Center(
                child: Text('Registro',
                    style: TextStyle(
                      fontSize: 50,
                    )),
              ),
              Column(
                children: [
                  Text(
                    'nombre',
                    style: TextStyle(fontSize: 20.0),
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
                          borderRadius: BorderRadius.circular(15.0),
                        )),
                    onChanged: (texto) {
                      _nombree = texto;
                    },
                  ),
                  TextField(
                    onChanged: (texto) {
                      _nombree = texto;
                    },
                  ),
                  Padding(
                    //prueba
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter a search term',
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 20.0,
                  ),
                  Text(
                    'Apellido',
                    style: TextStyle(fontSize: 20.0),
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
                          borderRadius: BorderRadius.circular(15.0),
                        )),
                    onChanged: (texto) {
                      _apellido = texto;
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
                      onPressed: () {
                        print(_nombree);
                        print(_apellido);
                      },
                      child: Text('siguiente'),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
