import 'package:flutter/material.dart';
import '../customUI/TarjetaTema.dart';
import '../model/modeloSala.dart';

class Salas extends StatefulWidget {
  Salas({Key key, this.miUsuario}) : super(key: key);
  final modeloSala miUsuario;

  @override
  _SalasState createState() => _SalasState();
}

class _SalasState extends State<Salas> {
  List<modeloSala> salas = [
    modeloSala(
        id: 1, name: "General", icon: "topico.svg", date: "12-Abril-2020"),
    modeloSala(
        id: 2,
        name: "Conceptos Basicos",
        icon: "topico.svg",
        date: "02-Octubre-2020"),
    modeloSala(
        id: 3, name: "Arreglos", icon: "topico.svg", date: "29-Noviembre-2020"),
    modeloSala(
        id: 4,
        name: "Estructura de datos",
        icon: "topico.svg",
        date: "26-Enero-2021"),
    modeloSala(
        id: 5, name: "Arboles", icon: "topico.svg", date: "12-Abril-2021"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: salas.length,
        itemBuilder: (context, index) => TarjetaTema(
          modeloS: salas[index],
          miUsuario: widget.miUsuario,
        ),
      ),
    );
  }
}
