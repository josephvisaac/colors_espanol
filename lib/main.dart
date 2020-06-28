import 'package:colors_espanol/colores.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // color: Colores.amarillo,
      theme: ThemeData(
        primaryColor: Colores.amarillo, //yellow
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Titulo'),
        ),
        body: Container(
          height: 50,
          width: 350,
          // color: Colors.,
          color: Colores.verdeAzulado, //teal
        ),
      ),
    );
  }
}

// // The grey swatch is intentionally omitted because when picking a color
// // randomly from this list to colorize an application, picking grey suddenly
// // makes the app look disabled.
// blueGrey,


