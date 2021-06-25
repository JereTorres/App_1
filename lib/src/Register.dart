import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Register> {
  late String _nombree;
  late String _apellido;

  get child => null;

  get children => null;
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
              Column(children: [
                Center(
                  child: Text('Registro',
                      style: TextStyle(
                        fontSize: 50,
                      )),
                ),
                //Column(
                // children: [
                Divider(
                  color: Colors.transparent,
                  height: 30.0,
                ),

                TextField(
                  enableInteractiveSelection: false,
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                      labelText: 'nombre',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  onChanged: (texto) {
                    _nombree = texto;
                  },
                ),
                Divider(
                  color: Colors.transparent,
                  height: 15.0,
                ),

                Divider(
                  color: Colors.transparent,
                  height: 10.0,
                ),
                TextField(
                  enableInteractiveSelection: false,
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                      labelText: 'apellido',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  onChanged: (texto) {
                    _apellido = texto;
                  },
                ),
                Divider(
                  color: Colors.transparent,
                  height: 15.0,
                ),
              ]),
              Padding(padding: EdgeInsets.only(top: 100.0)),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('atras'),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 150.0, horizontal: 150.0)),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {},
                  child: Text('siguiente'),
                ),
              ])
            ]),
      ),
    );
  }

  pading() {}
}
