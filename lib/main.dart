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
          centerTitle: true,
          title: Text('Amarillo'),
        ),
        body: Center(
     
          // color: Colors.,
          child: Container(
          padding: EdgeInsets.only(top:40),
          height: 100,
          width: 100,
            // color: Colores.lima,
            // color: Colores.azulAcento,
            // color: Colores.amarillo,
            // color: Colores.negro,
            // color: Colores.gris,
            color: Colores.rojo,
          ),
           
        ),
      ),
    );
  }
}

// // The grey swatch is intentionally omitted because when picking a color
// // randomly from this list to colorize an application, picking grey suddenly
// // makes the app look disabled.
// blueGrey,


