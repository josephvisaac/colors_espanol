# colors_espanol

This package translates ```Colors``` and its methods to Spanish.
ex: ```Colors.red = Colores.rojo```
ALL colors have been translated


Este paquete traduce Colors y sus metodos a español.
ej: ```Colors.red = Colores.rojo```
## Note/Aviso:
It is completely compatible with any widget container
Do not use it in ThemeData or in the immediate ```MaterialApp``` section where you set background color, etc. 
It is not compatible with that section, but everything else, any other ```Container()```
will always work perfectly fine.

Funciona perfectamente con todos los ```Container()``. No usen esto para la seccion de
ThemeData porque ``MaterialApp``` no le gusta el español. Pero no se confundan, su aplicacion puede usar ```MaterialApp()``` 
y a la misma vez usar este paquete. Solo no lo pueden usar en la parte inmediata  ```ThemeData``` y todo lo relacionado con background en MaterialApp(), etc.
Pueden usar esto para todos los ```Container()```. No hay ni un problema. Vean la figura 1 para ver como usar esto correctamente y figura 2 para ver el error 
que sucede con ```MaterialApp()```.
## Specific Example/Ejemplo Especifico:

```dart 
color: Colores.rojo,
```

## Chart
English | Español 
--- | --- | 
```Colors.```| ```Colores.``` 
--- | --- | 
red | rojo | 
pink | 301 | 
purple | 301 | 
deepPurple | 301 | 
indigo | 301 | 
blue | 301 | 
lightBlue, | 301 | 
cyan | 301 | 
teal | 301 | 
green, | 301 | 
lightGreen | 301 | 
lime | 301 | 
yellow | 301 | 
amber | 301 | 
orange | 301 | 
deepOrange| 301 | 
brown | 301 | 
black | 301 | 
transparent | 301 | 
Seconds | 301 | 
Seconds | 301 | 
Seconds | 301 | 
Seconds | 301 | 
Seconds | 301 | 
Seconds | 301 | 
Seconds | 301 | 
Seconds | 301 | 
Seconds | 301 | 
Seconds | 301 | 
Seconds | 301 | 



<!-- - [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab) -->


