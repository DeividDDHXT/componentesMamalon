import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  String _userName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas de datos'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 20.0,
        ),
        children: [
          _createEntradaNombre(),
          _createEntradaPass(),
        ],
      ),
    );
  }

  Widget _createEntradaNombre() {
    return TextField(
      autofocus: true,
      textAlign: TextAlign.center,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Colors.amberAccent,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Color.fromARGB(255, 0, 25, 57),
      cursorRadius: const Radius.circular(10.0),
      cursorWidth: 5.0,
      //maxLength: 4,

      maxLines: 2,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: "Escriba su nombre",
          labelText: "User name",
          //helperText: "Nombre",
          prefixIcon: const Icon(Icons.person)
          // icon: const Icon(Icons.person),,
          //iconColor: Colors.blueGrey,
          ),
      onChanged: (valor) {
        _userName = valor;
        print(_userName);
      },
    );
  }

  Widget _createEntradaPass() {
    return TextField(
      autofocus: true,
      textAlign: TextAlign.center,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(
        color: Colors.amberAccent,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.red,
      cursorRadius: const Radius.circular(10.0),
      cursorWidth: 5.0,
      maxLength: 8,
      obscureText: true,
      keyboardType: TextInputType.number,

      //maxLines: 2,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: "Escriba su nombre",
        labelText: "Password",

        //helperText: "Nombre",
        prefixIcon: const Icon(Icons.password),
        // icon: const Icon(Icons.person),,
        //iconColor: Colors.blueGrey,
      ),
      onChanged: (valor) {
        _userName = valor;
        print(_userName);
      },
    );
  }
}
