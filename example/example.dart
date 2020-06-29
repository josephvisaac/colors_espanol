import 'package:colors_espanol/colores.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 350,
      // color: Colors.yellowAccent,
      color: Colores.amarillo,
    );
  }
}
