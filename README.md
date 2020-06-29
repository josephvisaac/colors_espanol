# colors_espanol

This package translates ```Colors``` and its methods to Spanish.
ex: ```Colors.red = Colores.rojo```
ALL colors have been translated.


Este paquete traduce Colors y sus metodos a español.
ej: ```Colors.red = Colores.rojo```.

###### Author/Autor: josephvisaac@gmail.com

## Specific Example/Ejemplo Especifico:

```dart 
color: Colores.rojo,
```

##                               Chart
English | Español       
--- | --- |                 
```Colors.```| ```Colores.```| 
red | rojo | 
pink | rosado | 
purple | morado | 
deepPurple | moradoProfundo | 
indigo | indigo | 
blue | azul | 
lightBlue, | claroAzul | 
cyan | cian | 
teal | verdeAzulado | 
green, | verde | 
lightGreen | claroVerde | 
lime | lima | 
yellow | amarillo | 
amber | ambar | 
orange | naranja | 
deepOrange| naranjaProfundo | sdsdsdsdsdsdds
brown | marron | 
black | negro | 
grey | gris | 
transparent | transparente | 
redAccent | rojoAcento |
pinkAccent | rosadoAcento |
 purpleAccent|  moradoAcento |
 deepPurpleAccent| moradoProfundoAcento |
 indigoAccent| indigoAcento |
 blueAccent| azulAcento |
 lightBlueAccent| claroAzulAcento
 cyanAccent| cianAcento |
 tealAccent| verdeAzuladoAcento|
 greenAccent| verdeAcento|
 lightGreenAccent| claroVerdeAcento|
 limeAccent| limaAcento|
 yellowAccent| amarilloAcento|
 amberAccent| ambarAcento|
 orangeAccent| naranjaAcento|
 deepOrangeAccent| naranjaProfundoAcento|

<!-- - [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab) -->

## Ejemplo de Codigo/ Code Example

```dart 
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
```
## Foto del Ejemplo/Example Pic

![Image of Code](https://github.com/josephvisaac/colors_espanol/blob/master/assets/images/examplePic.png)


## note/nota
##### Enjoy! !Disfruten!
###### josephvisaac@gmail.com
