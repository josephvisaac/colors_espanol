library colores;

import 'dart:ui' show Color;
import 'package:flutter/painting.dart';

/// Español: Define un color y un color "swatch" que puedes personalizar en 10 diferentes tonos.
/// Para usar los tonos del color escogido, use el formato de indice, ejemplo: "[0]". Los numeros mayores
/// significan un color mas oscuro, o profundo. Hay 10 tonos(indices) que se pueden usar: 50, 100, 200, ..., 900.
///   Tambien vea:
///  * [Colores], define todos los colores estandares.
class MaterialColor extends ColorSwatch<int> {
  /// Creates a color swatch with a variety of shades.
  ///
  /// The `primary` argument should be the 32 bit ARGB value of one of the
  /// values in the swatch, as would be passed to the [new Color] constructor
  /// for that same color, and as is exposed by [value]. (This is distinct from
  /// the specific index of the color in the swatch.)
  const MaterialColor(int primary, Map<int, Color> swatch)
      : super(primary, swatch);

  /// The lightest shade.
  Color get shade50 => this[50];

  /// The second lightest shade.
  Color get shade100 => this[100];

  /// The third lightest shade.
  Color get shade200 => this[200];

  /// The fourth lightest shade.
  Color get shade300 => this[300];

  /// The fifth lightest shade.
  Color get shade400 => this[400];

  /// The default shade.
  Color get shade500 => this[500];

  /// The fourth darkest shade.
  Color get shade600 => this[600];

  /// The third darkest shade.
  Color get shade700 => this[700];

  /// The second darkest shade.
  Color get shade800 => this[800];

  /// The darkest shade.
  Color get shade900 => this[900];
}

/// Defines a single accent color as well a swatch of four shades of the
/// accent color.
///
/// The color's shades are referred to by index, the colors with smaller
/// indices are lighter, larger indices are darker. There are four valid
/// indices: 100, 200, 400, and 700. The value of this color should be the
/// same as the value of index 200 and [shade200].
///
/// Vea tambien:
///
///  * [Colores], que define todos los colores estandares de colores materiales (material colors).
///  * <https://material.io/go/design-theming#color-color-schemes>
class MaterialAccentColor extends ColorSwatch<int> {
  /// Esto crea una paleta de color con variedades de tonos disponibles.
  const MaterialAccentColor(int primary, Map<int, Color> swatch)
      : super(primary, swatch);

  /// El tono mas claro.
  Color get shade50 => this[50];

  /// El segundo tono mas claro.
  Color get shade100 => this[100];

  /// El tono predeterminado.
  Color get shade200 => this[200];

  /// El segundo tono mas oscuro.
  Color get shade400 => this[400];

  /// El tono mas oscuro.
  Color get shade700 => this[700];
}

/// [Color] y [ColorSwatch] constantes que representan Material design's
/// [color palette](https://material.io/design/color/).
///
/// En vez de usar un color absoluto, considere usar [Theme.of] para obtener la estructura local [Themedata],
/// porque [Themedata] revela los colores escogidos para el tema actual de la aplicacion,
/// por ejemplo [Themedata.primaryColor] y [ThemeData.accentColor] (ademas de otros).
///
/// La mayoria de paletas de color(swatches) tienen colores de 100 a 900 en
/// incrementos de  100, mas el color 50. Los numeros menores son mas palidos
/// mientras que los mayores se vuelven mas y mas oscuros. Los acentos de las
/// paletas( ejemplo: [rojoAcento]) solo tienen los valores  100, 200, 400, y 700.
///
/// In addition, a series of blacks and whites with common opacities are
/// available. For example, [black54] is a pure black with 54% opacity.
///
/// {@tool snippet}
///
/// Para seleccionar un color especifico de una de las paletas(swatches), usa el formato
/// de indice "[]". Ejemplo:
/// ```dart
/// Color selection = Colors.green[400]; // Selects a mid-range green.
/// ```
/// {@end-tool}
/// {@tool snippet}
///
/// Each [ColorSwatch] constant is a color and can used directly. For example:
///
/// ```dart
/// Container(
///   color: Colors.blue, // same as Colors.blue[500] or Colors.blue.shade500
/// )
/// ```
/// {@end-tool}
///
/// ## Color palettes
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.pink.png)
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.pinkAccent.png)
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.red.png)
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.redAccent.png)
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepOrange.png)
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepOrangeAccent.png)
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.orange.png)
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.orangeAccent.png)
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.amber.png)
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.amberAccent.png)
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.yellow.png)
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.yellowAccent.png)
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lime.png)
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.limeAccent.png)
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightGreen.png)
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightGreenAccent.png)
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.green.png)
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.greenAccent.png)
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.teal.png)
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.tealAccent.png)
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.cyan.png)
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.cyanAccent.png)
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightBlue.png)
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightBlueAccent.png)
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blue.png)
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blueAccent.png)
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.indigo.png)
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.indigoAccent.png)
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.purple.png)
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.purpleAccent.png)
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepPurple.png)
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepPurpleAccent.png)
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blueGrey.png)
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.brown.png)
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.grey.png)
///
/// ## Negros y Blancos
///
/// Tales colores son identificados por su transparencia. Los niveles bajos de
/// transparencia (e.g. [Colores.blanco12] and [Colors.blanco10]) son dificiles de ver, reconocer y
/// es recomendado evadir usarlos. Fueron hechos para usarlos en efectos sutiles.
///
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blacks.png)
/// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
///
/// El color [Colores.transparente] no aparece aqui, porque es invisible.
class Colores {
  // Esta clase no tiene el proposito de crear una instancia(instantiated) o de ser extendida;
  // este constructor prohibe la creacion de una instancia(instantiated) o extencion.
  // ignore: unused_element
  Colores._();

  /// Completamente invisible.
  static const Color transparente = Color(0x00000000);

  /// Completamente negro opaco.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blacks.png)
  ///
  /// Tambien vea:
  ///
  ///  * [negro87], [negro54], [negro45], [negro38], [negro26], [negro12], del cual
  ///    hay variaciones de este color con diferente opacidad.
  ///  * [blanco], un color solido(puro).
  ///  * [transparente], un color completamente transparente.
  static const Color negro = Color(0xFF000000);

  /// negro 87% opaco.
  ///
  /// Este color tiene muy buen contraste para aplicaciones de diseño claro(tema claro).
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blacks.png)
  ///
  /// Tambien vea:
  ///
  ///  * [Typography.black], que usa este color para los textos (estilo del texto).
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  ///  * [negro], [negro54], [negro45], [negro38], [negro26], [negro12], que
  ///    son variaciones de este color con diferente opacidad.
  static const Color negro87 = Color(0xDD000000);

  /// negro 54% opaco.
  ///
  /// Este color se usa comunmente para titulos(no la propiedad "titulo", sino los headers, o" encabezados") de tema
  /// claro(light theme). Tambien se usa como color de fondo(background) de dialogos.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blacks.png)
  ///
  /// Tambien vea:
  ///
  ///  * [Typography.black], que usa este color para los textos (estilo del texto).
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  ///  * [negro], [negro87], [negro45], [negro38], [negro26], [negro12], que
  ///    son variaciones de este color con diferente opacidad.
  static const Color negro54 = Color(0x8A000000);

  /// Negro 45% opaco.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blacks.png)
  ///
  /// Vea tambien:
  ///
  ///  * [negro], [negro87], [negro54], [negro38], [negro26], [negro12], que
  ///    son variaciones de este color con diferente opacidad.
  static const Color negro45 = Color(0x73000000);

  /// negro 38% opaco.
  ///
  /// Para temas claros (light themes), o sea, cuando el [ThemeData.brightness]
  /// sea [Brightness.light], este color se usa para iconos deshabilitados(como false o null)
  /// y para texto de marcador de posición (placeholder text) en [DataTable].
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blacks.png)
  ///
  /// Vea tambien:
  ///
  ///  * [negro], [negro87], [negro54], [negro38], [negro26], [negro12], que
  ///    son variaciones de este color con diferente opacidad.
  static const Color negro38 = Color(0x61000000);

  /// negro 26% opaco.
  ///
  /// Se usa para botones de radio (radio buttons) deshabilitados y para el texto de botones planos (flatButton)
  /// deshabilitados en temas claros(light themes)..
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blacks.png)
  ///
  /// Vea tambien:
  ///
  ///  * [ThemeData.disabledColor], que usa este color por defecto(default, predeterminado)
  ///   en temas claros(light themes).
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  ///  * [negro], [negro87], [negro54], [negro38], [negro26], [negro12], que
  ///    son variaciones de este color con diferente opacidad.
  static const Color negro26 = Color(0x42000000);

  /// negro 12% opaco.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blacks.png)
  ///
  /// Usado como color de fondo para botones elevados (RaisedButton) en temas claros(light themes).
  ///
  /// Vea tambien:
  ///
  ///  * [negro], [negro87], [negro54], [negro45], [negro38], [negro26], which
  ///    are variants on this color but with different opacities.
  static const Color negro12 = Color(0x1F000000);

  /// Completely opaque white.
  ///
  /// This is a good contrasting color for the [ThemeData.primaryColor] in the
  /// dark theme. See [ThemeData.brightness].
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
  ///
  /// Vea tambien:
  ///
  ///  * [Typography.white], which uses this color for its text styles.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  ///  * [white70, white60, white54, white38, white30, white12, white10], which are variants on this color
  ///    but with different opacities.
  ///  * [negro], a solid negro color.
  ///  * [transparent], a fully-transparent color.
  static const Color blanco = Color(0xFFFFFFFF);

  /// White with 70% opacity.
  ///
  /// This is a color commonly used for headings in dark themes.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
  ///
  /// Vea tambien:
  ///
  ///  * [Typography.white], which uses this color for its text styles.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  ///  * [white, white60, white54, white38, white30, white12, white10], which are variants on this color
  ///    but with different opacities.
  static const Color blanco70 = Color(0xB3FFFFFF);

  /// White with 60% opacity.
  ///
  /// Used for medium-emphasis text and hint text when [Theme.brightness] is
  /// set to [Brightness.dark].
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
  ///
  /// Vea tambien:
  ///
  ///  * [ExpandIcon], which uses this color for dark themes.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  ///  * [white, white54, white30, white38, white12, white10], which are variants on this color
  ///    but with different opacities.
  static const Color blanco60 = Color(0x99FFFFFF);

  /// White with 54% opacity.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
  ///
  /// Vea tambien:
  ///
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  ///  * [white, white60, white38, white30, white12, white10], which are variants on this color
  ///    but with different opacities.
  static const Color blanco54 = Color(0x8AFFFFFF);

  /// White with 38% opacity.
  ///
  /// Used for disabled radio buttons and the text of disabled flat buttons in dark themes.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
  ///
  /// Vea tambien:
  ///
  ///  * [ThemeData.disabledColor], which uses this color by default in dark themes.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  ///  * [white, white60, white54, white70, white30, white12, white10], which are variants on this color
  ///    but with different opacities.
  static const Color blanco38 = Color(0x62FFFFFF);

  /// White with 30% opacity.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
  ///
  /// Vea tambien:
  ///
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  ///  * [white, white60, white54, white70, white38, white12, white10], which are variants on this color
  ///    but with different opacities.
  static const Color blanco30 = Color(0x4DFFFFFF);

  /// White with 24% opacity.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
  ///
  /// Used for the splash color for filled buttons.
  ///
  /// Vea tambien:
  ///
  ///  * [white, white60, white54, white70, white38, white30, white10], which are variants on this color
  ///    but with different opacities.
  static const Color blanco24 = Color(0x3DFFFFFF);

  /// White with 12% opacity.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
  ///
  /// Used for the background of disabled raised buttons in dark themes.
  ///
  /// Vea tambien:
  ///
  ///  * [white, white60, white54, white70, white38, white30, white10], which are variants on this color
  ///    but with different opacities.
  static const Color blanco12 = Color(0x1FFFFFFF);

  /// White with 10% opacity.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.whites.png)
  ///
  /// Vea tambien:
  ///
  ///  * [white, white60, white54, white70, white38, white30, white12], which are variants on this color
  ///    but with different opacities.
  ///  * [transparent], a fully-transparent color, not far from this one.
  static const Color blanco10 = Color(0x1AFFFFFF);

  /// The red primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.red.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.redAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepOrange.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepOrangeAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.pink.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.pinkAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.red[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [redAccent], the corresponding accent colors.
  ///  * [deepOrange] and [pink], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor rojo = MaterialColor(
    _rojoPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(_rojoPrimaryValue),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );
  static const int _rojoPrimaryValue = 0xFFF44336;

  /// The red accent swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.red.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.redAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepOrange.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepOrangeAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.pink.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.pinkAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.redAccent[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [red], the corresponding primary colors.
  ///  * [deepOrangeAccent] and [pinkAccent], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialAccentColor rojoAcento = MaterialAccentColor(
    _valorAcentoRojo,
    <int, Color>{
      100: Color(0xFFFF8A80),
      200: Color(_valorAcentoRojo),
      400: Color(0xFFFF1744),
      700: Color(0xFFD50000),
    },
  );
  static const int _valorAcentoRojo = 0xFFFF5252;

  /// The pink primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.pink.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.pinkAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.red.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.redAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.purple.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.purpleAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.pink[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [pinkAccent], the corresponding accent colors.
  ///  * [red] and [purple], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor rosado = MaterialColor(
    _valorPrimoRosado,
    <int, Color>{
      50: Color(0xFFFCE4EC),
      100: Color(0xFFF8BBD0),
      200: Color(0xFFF48FB1),
      300: Color(0xFFF06292),
      400: Color(0xFFEC407A),
      500: Color(_valorPrimoRosado),
      600: Color(0xFFD81B60),
      700: Color(0xFFC2185B),
      800: Color(0xFFAD1457),
      900: Color(0xFF880E4F),
    },
  );
  static const int _valorPrimoRosado = 0xFFE91E63;

  /// The pink accent color swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.pink.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.pinkAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.red.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.redAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.purple.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.purpleAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.pinkAccent[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [pink], the corresponding primary colors.
  ///  * [redAccent] and [purpleAccent], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialAccentColor rosadoAcento = MaterialAccentColor(
    _pinkAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFFFF80AB),
      200: Color(_pinkAccentPrimaryValue),
      400: Color(0xFFF50057),
      700: Color(0xFFC51162),
    },
  );
  static const int _pinkAccentPrimaryValue = 0xFFFF4081;

  /// The purple primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.purple.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.purpleAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepPurple.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepPurpleAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.pink.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.pinkAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.purple[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [purpleAccent], the corresponding accent colors.
  ///  * [deepPurple] and [pink], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor morado = MaterialColor(
    _purplePrimaryValue,
    <int, Color>{
      50: Color(0xFFF3E5F5),
      100: Color(0xFFE1BEE7),
      200: Color(0xFFCE93D8),
      300: Color(0xFFBA68C8),
      400: Color(0xFFAB47BC),
      500: Color(_purplePrimaryValue),
      600: Color(0xFF8E24AA),
      700: Color(0xFF7B1FA2),
      800: Color(0xFF6A1B9A),
      900: Color(0xFF4A148C),
    },
  );
  static const int _purplePrimaryValue = 0xFF9C27B0;

  /// The purple accent color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.purple.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.purpleAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepPurple.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepPurpleAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.pink.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.pinkAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.purpleAccent[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [purple], the corresponding primary colors.
  ///  * [deepPurpleAccent] and [pinkAccent], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialAccentColor moradoAcento = MaterialAccentColor(
    _purpleAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFFEA80FC),
      200: Color(_purpleAccentPrimaryValue),
      400: Color(0xFFD500F9),
      700: Color(0xFFAA00FF),
    },
  );
  static const int _purpleAccentPrimaryValue = 0xFFE040FB;

  /// The deep purple primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepPurple.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepPurpleAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.purple.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.purpleAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.indigo.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.indigoAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.deepPurple[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [deepPurpleAccent], the corresponding accent colors.
  ///  * [purple] and [indigo], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor moradoProfundo = MaterialColor(
    _deepPurplePrimaryValue,
    <int, Color>{
      50: Color(0xFFEDE7F6),
      100: Color(0xFFD1C4E9),
      200: Color(0xFFB39DDB),
      300: Color(0xFF9575CD),
      400: Color(0xFF7E57C2),
      500: Color(_deepPurplePrimaryValue),
      600: Color(0xFF5E35B1),
      700: Color(0xFF512DA8),
      800: Color(0xFF4527A0),
      900: Color(0xFF311B92),
    },
  );
  static const int _deepPurplePrimaryValue = 0xFF673AB7;

  /// The deep purple accent color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepPurple.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepPurpleAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.purple.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.purpleAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.indigo.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.indigoAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.deepPurpleAccent[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [deepPurple], the corresponding primary colors.
  ///  * [purpleAccent] and [indigoAccent], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialAccentColor moradoProfundoAcento = MaterialAccentColor(
    _deepPurpleAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFFB388FF),
      200: Color(_deepPurpleAccentPrimaryValue),
      400: Color(0xFF651FFF),
      700: Color(0xFF6200EA),
    },
  );
  static const int _deepPurpleAccentPrimaryValue = 0xFF7C4DFF;

  /// The indigo primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.indigo.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.indigoAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blue.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blueAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepPurple.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepPurpleAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.indigo[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [indigoAccent], the corresponding accent colors.
  ///  * [blue] and [deepPurple], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor indigo = MaterialColor(
    _indigoPrimaryValue,
    <int, Color>{
      50: Color(0xFFE8EAF6),
      100: Color(0xFFC5CAE9),
      200: Color(0xFF9FA8DA),
      300: Color(0xFF7986CB),
      400: Color(0xFF5C6BC0),
      500: Color(_indigoPrimaryValue),
      600: Color(0xFF3949AB),
      700: Color(0xFF303F9F),
      800: Color(0xFF283593),
      900: Color(0xFF1A237E),
    },
  );
  static const int _indigoPrimaryValue = 0xFF3F51B5;

  /// The indigo accent color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.indigo.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.indigoAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blue.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blueAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepPurple.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepPurpleAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.indigoAccent[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [indigo], the corresponding primary colors.
  ///  * [blueAccent] and [deepPurpleAccent], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialAccentColor indigoAcento = MaterialAccentColor(
    _indigoAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFF8C9EFF),
      200: Color(_indigoAccentPrimaryValue),
      400: Color(0xFF3D5AFE),
      700: Color(0xFF304FFE),
    },
  );
  static const int _indigoAccentPrimaryValue = 0xFF536DFE;

  /// The blue primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blue.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blueAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.indigo.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.indigoAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightBlue.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightBlueAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blueGrey.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.blue[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [blueAccent], the corresponding accent colors.
  ///  * [indigo], [lightBlue], and [blueGrey], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor azul = MaterialColor(
    _bluePrimaryValue,
    <int, Color>{
      50: Color(0xFFE3F2FD),
      100: Color(0xFFBBDEFB),
      200: Color(0xFF90CAF9),
      300: Color(0xFF64B5F6),
      400: Color(0xFF42A5F5),
      500: Color(_bluePrimaryValue),
      600: Color(0xFF1E88E5),
      700: Color(0xFF1976D2),
      800: Color(0xFF1565C0),
      900: Color(0xFF0D47A1),
    },
  );
  static const int _bluePrimaryValue = 0xFF2196F3;

  /// The blue accent color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blue.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blueAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.indigo.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.indigoAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightBlue.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightBlueAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.blueAccent[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [blue], the corresponding primary colors.
  ///  * [indigoAccent] and [lightBlueAccent], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialAccentColor azulAcento = MaterialAccentColor(
    _blueAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFF82B1FF),
      200: Color(_blueAccentPrimaryValue),
      400: Color(0xFF2979FF),
      700: Color(0xFF2962FF),
    },
  );
  static const int _blueAccentPrimaryValue = 0xFF448AFF;

  /// The light blue primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightBlue.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightBlueAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blue.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blueAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.cyan.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.cyanAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.lightBlue[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [lightBlueAccent], the corresponding accent colors.
  ///  * [blue] and [cyan], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor claroAzul = MaterialColor(
    _lightBluePrimaryValue,
    <int, Color>{
      50: Color(0xFFE1F5FE),
      100: Color(0xFFB3E5FC),
      200: Color(0xFF81D4FA),
      300: Color(0xFF4FC3F7),
      400: Color(0xFF29B6F6),
      500: Color(_lightBluePrimaryValue),
      600: Color(0xFF039BE5),
      700: Color(0xFF0288D1),
      800: Color(0xFF0277BD),
      900: Color(0xFF01579B),
    },
  );
  static const int _lightBluePrimaryValue = 0xFF03A9F4;

  /// The light blue accent swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightBlue.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightBlueAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blue.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blueAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.cyan.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.cyanAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.lightBlueAccent[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [lightBlue], the corresponding primary colors.
  ///  * [blueAccent] and [cyanAccent], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialAccentColor claroAzulAcento = MaterialAccentColor(
    _lightBlueAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFF80D8FF),
      200: Color(_lightBlueAccentPrimaryValue),
      400: Color(0xFF00B0FF),
      700: Color(0xFF0091EA),
    },
  );
  static const int _lightBlueAccentPrimaryValue = 0xFF40C4FF;

  /// The cyan primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.cyan.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.cyanAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightBlue.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightBlueAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.teal.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.tealAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blueGrey.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.cyan[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [cyanAccent], the corresponding accent colors.
  ///  * [lightBlue], [teal], and [blueGrey], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor cian = MaterialColor(
    _cyanPrimaryValue,
    <int, Color>{
      50: Color(0xFFE0F7FA),
      100: Color(0xFFB2EBF2),
      200: Color(0xFF80DEEA),
      300: Color(0xFF4DD0E1),
      400: Color(0xFF26C6DA),
      500: Color(_cyanPrimaryValue),
      600: Color(0xFF00ACC1),
      700: Color(0xFF0097A7),
      800: Color(0xFF00838F),
      900: Color(0xFF006064),
    },
  );
  static const int _cyanPrimaryValue = 0xFF00BCD4;

  /// The cyan accent color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.cyan.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.cyanAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightBlue.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightBlueAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.teal.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.tealAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.cyanAccent[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [cyan], the corresponding primary colors.
  ///  * [lightBlueAccent] and [tealAccent], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialAccentColor cianAcento = MaterialAccentColor(
    _cyanAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFF84FFFF),
      200: Color(_cyanAccentPrimaryValue),
      400: Color(0xFF00E5FF),
      700: Color(0xFF00B8D4),
    },
  );
  static const int _cyanAccentPrimaryValue = 0xFF18FFFF;

  /// The teal primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.teal.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.tealAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.green.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.greenAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.cyan.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.cyanAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.teal[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [tealAccent], the corresponding accent colors.
  ///  * [green] and [cyan], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor verdeAzulado = MaterialColor(
    _tealPrimaryValue,
    <int, Color>{
      50: Color(0xFFE0F2F1),
      100: Color(0xFFB2DFDB),
      200: Color(0xFF80CBC4),
      300: Color(0xFF4DB6AC),
      400: Color(0xFF26A69A),
      500: Color(_tealPrimaryValue),
      600: Color(0xFF00897B),
      700: Color(0xFF00796B),
      800: Color(0xFF00695C),
      900: Color(0xFF004D40),
    },
  );
  static const int _tealPrimaryValue = 0xFF009688;

  /// The teal accent color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.teal.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.tealAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.green.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.greenAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.cyan.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.cyanAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.tealAccent[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [teal], the corresponding primary colors.
  ///  * [greenAccent] and [cyanAccent], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialAccentColor verdeAzuladoAcento = MaterialAccentColor(
    _tealAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFFA7FFEB),
      200: Color(_tealAccentPrimaryValue),
      400: Color(0xFF1DE9B6),
      700: Color(0xFF00BFA5),
    },
  );
  static const int _tealAccentPrimaryValue = 0xFF64FFDA;

  /// The green primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.green.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.greenAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.teal.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.tealAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightGreen.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightGreenAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lime.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.limeAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.green[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [greenAccent], the corresponding accent colors.
  ///  * [teal], [lightGreen], and [lime], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor verde = MaterialColor(
    _greenPrimaryValue,
    <int, Color>{
      50: Color(0xFFE8F5E9),
      100: Color(0xFFC8E6C9),
      200: Color(0xFFA5D6A7),
      300: Color(0xFF81C784),
      400: Color(0xFF66BB6A),
      500: Color(_greenPrimaryValue),
      600: Color(0xFF43A047),
      700: Color(0xFF388E3C),
      800: Color(0xFF2E7D32),
      900: Color(0xFF1B5E20),
    },
  );
  static const int _greenPrimaryValue = 0xFF4CAF50;

  /// The green accent color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.green.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.greenAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.teal.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.tealAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightGreen.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightGreenAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lime.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.limeAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.greenAccent[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [green], the corresponding primary colors.
  ///  * [tealAccent], [lightGreenAccent], and [limeAccent], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialAccentColor verdeAcento = MaterialAccentColor(
    _greenAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFFB9F6CA),
      200: Color(_greenAccentPrimaryValue),
      400: Color(0xFF00E676),
      700: Color(0xFF00C853),
    },
  );
  static const int _greenAccentPrimaryValue = 0xFF69F0AE;

  /// The light green primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightGreen.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightGreenAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.green.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.greenAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lime.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.limeAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.lightGreen[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [lightGreenAccent], the corresponding accent colors.
  ///  * [green] and [lime], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor claroVerde = MaterialColor(
    _lightGreenPrimaryValue,
    <int, Color>{
      50: Color(0xFFF1F8E9),
      100: Color(0xFFDCEDC8),
      200: Color(0xFFC5E1A5),
      300: Color(0xFFAED581),
      400: Color(0xFF9CCC65),
      500: Color(_lightGreenPrimaryValue),
      600: Color(0xFF7CB342),
      700: Color(0xFF689F38),
      800: Color(0xFF558B2F),
      900: Color(0xFF33691E),
    },
  );
  static const int _lightGreenPrimaryValue = 0xFF8BC34A;

  /// The light green accent color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightGreen.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightGreenAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.green.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.greenAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lime.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.limeAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.lightGreenAccent[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [lightGreen], the corresponding primary colors.
  ///  * [greenAccent] and [limeAccent], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialAccentColor claroVerdeAcento = MaterialAccentColor(
    _lightGreenAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFFCCFF90),
      200: Color(_lightGreenAccentPrimaryValue),
      400: Color(0xFF76FF03),
      700: Color(0xFF64DD17),
    },
  );
  static const int _lightGreenAccentPrimaryValue = 0xFFB2FF59;

  /// The lime primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lime.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.limeAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightGreen.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightGreenAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.yellow.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.yellowAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.lime[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [limeAccent], the corresponding accent colors.
  ///  * [lightGreen] and [yellow], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor lima = MaterialColor(
    _limePrimaryValue,
    <int, Color>{
      50: Color(0xFFF9FBE7),
      100: Color(0xFFF0F4C3),
      200: Color(0xFFE6EE9C),
      300: Color(0xFFDCE775),
      400: Color(0xFFD4E157),
      500: Color(_limePrimaryValue),
      600: Color(0xFFC0CA33),
      700: Color(0xFFAFB42B),
      800: Color(0xFF9E9D24),
      900: Color(0xFF827717),
    },
  );
  static const int _limePrimaryValue = 0xFFCDDC39;

  /// The lime accent primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lime.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.limeAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightGreen.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lightGreenAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.yellow.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.yellowAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.limeAccent[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [lime], the corresponding primary colors.
  ///  * [lightGreenAccent] and [yellowAccent], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialAccentColor limaAcento = MaterialAccentColor(
    _limeAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFFF4FF81),
      200: Color(_limeAccentPrimaryValue),
      400: Color(0xFFC6FF00),
      700: Color(0xFFAEEA00),
    },
  );
  static const int _limeAccentPrimaryValue = 0xFFEEFF41;

  /// The yellow primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.yellow.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.yellowAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lime.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.limeAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.amber.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.amberAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.yellow[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [yellowAccent], the corresponding accent colors.
  ///  * [lime] and [amber], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor amarillo = MaterialColor(
    _yellowPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFFDE7),
      100: Color(0xFFFFF9C4),
      200: Color(0xFFFFF59D),
      300: Color(0xFFFFF176),
      400: Color(0xFFFFEE58),
      500: Color(_yellowPrimaryValue),
      600: Color(0xFFFDD835),
      700: Color(0xFFFBC02D),
      800: Color(0xFFF9A825),
      900: Color(0xFFF57F17),
    },
  );
  static const int _yellowPrimaryValue = 0xFFFFEB3B;

  /// The yellow accent color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.yellow.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.yellowAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.lime.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.limeAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.amber.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.amberAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.yellowAccent[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [yellow], the corresponding primary colors.
  ///  * [limeAccent] and [amberAccent], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialAccentColor amarilloAcento = MaterialAccentColor(
    _yellowAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFFFFFF8D),
      200: Color(_yellowAccentPrimaryValue),
      400: Color(0xFFFFEA00),
      700: Color(0xFFFFD600),
    },
  );
  static const int _yellowAccentPrimaryValue = 0xFFFFFF00;

  /// The amber primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.amber.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.amberAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.yellow.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.yellowAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.orange.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.orangeAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.amber[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [amberAccent], the corresponding accent colors.
  ///  * [yellow] and [orange], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor ambar = MaterialColor(
    _amberPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFF8E1),
      100: Color(0xFFFFECB3),
      200: Color(0xFFFFE082),
      300: Color(0xFFFFD54F),
      400: Color(0xFFFFCA28),
      500: Color(_amberPrimaryValue),
      600: Color(0xFFFFB300),
      700: Color(0xFFFFA000),
      800: Color(0xFFFF8F00),
      900: Color(0xFFFF6F00),
    },
  );
  static const int _amberPrimaryValue = 0xFFFFC107;

  /// The amber accent color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.amber.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.amberAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.yellow.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.yellowAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.orange.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.orangeAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.amberAccent[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [amber], the corresponding primary colors.
  ///  * [yellowAccent] and [orangeAccent], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialAccentColor ambarAcento = MaterialAccentColor(
    _amberAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFFFFE57F),
      200: Color(_amberAccentPrimaryValue),
      400: Color(0xFFFFC400),
      700: Color(0xFFFFAB00),
    },
  );
  static const int _amberAccentPrimaryValue = 0xFFFFD740;

  /// The orange primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.orange.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.orangeAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.amber.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.amberAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepOrange.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepOrangeAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.brown.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.orange[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [orangeAccent], the corresponding accent colors.
  ///  * [amber], [deepOrange], and [brown], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor naranja = MaterialColor(
    _orangePrimaryValue,
    <int, Color>{
      50: Color(0xFFFFF3E0),
      100: Color(0xFFFFE0B2),
      200: Color(0xFFFFCC80),
      300: Color(0xFFFFB74D),
      400: Color(0xFFFFA726),
      500: Color(_orangePrimaryValue),
      600: Color(0xFFFB8C00),
      700: Color(0xFFF57C00),
      800: Color(0xFFEF6C00),
      900: Color(0xFFE65100),
    },
  );
  static const int _orangePrimaryValue = 0xFFFF9800;

  /// The orange accent color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.orange.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.orangeAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.amber.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.amberAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepOrange.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepOrangeAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.orangeAccent[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [orange], the corresponding primary colors.
  ///  * [amberAccent] and [deepOrangeAccent], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialAccentColor naranjaAcento = MaterialAccentColor(
    _orangeAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFFFFD180),
      200: Color(_orangeAccentPrimaryValue),
      400: Color(0xFFFF9100),
      700: Color(0xFFFF6D00),
    },
  );
  static const int _orangeAccentPrimaryValue = 0xFFFFAB40;

  /// The deep orange primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepOrange.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepOrangeAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.orange.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.orangeAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.red.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.redAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.brown.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.deepOrange[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [deepOrangeAccent], the corresponding accent colors.
  ///  * [orange], [red], and [brown], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor naranjaProfundo = MaterialColor(
    _deepOrangePrimaryValue,
    <int, Color>{
      50: Color(0xFFFBE9E7),
      100: Color(0xFFFFCCBC),
      200: Color(0xFFFFAB91),
      300: Color(0xFFFF8A65),
      400: Color(0xFFFF7043),
      500: Color(_deepOrangePrimaryValue),
      600: Color(0xFFF4511E),
      700: Color(0xFFE64A19),
      800: Color(0xFFD84315),
      900: Color(0xFFBF360C),
    },
  );
  static const int _deepOrangePrimaryValue = 0xFFFF5722;

  /// The deep orange accent color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepOrange.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.deepOrangeAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.orange.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.orangeAccent.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.red.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.redAccent.png)
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.deepOrangeAccent[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [deepOrange], the corresponding primary colors.
  ///  * [orangeAccent] [redAccent], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialAccentColor naranjaProfundoAcento = MaterialAccentColor(
    _deepOrangeAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFFFF9E80),
      200: Color(_deepOrangeAccentPrimaryValue),
      400: Color(0xFFFF3D00),
      700: Color(0xFFDD2C00),
    },
  );
  static const int _deepOrangeAccentPrimaryValue = 0xFFFF6E40;

  /// The brown primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.brown.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.orange.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blueGrey.png)
  ///
  /// This swatch has no corresponding accent color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.brown[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [orange] and [blueGrey], vaguely similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor marron = MaterialColor(
    _brownPrimaryValue,
    <int, Color>{
      50: Color(0xFFEFEBE9),
      100: Color(0xFFD7CCC8),
      200: Color(0xFFBCAAA4),
      300: Color(0xFFA1887F),
      400: Color(0xFF8D6E63),
      500: Color(_brownPrimaryValue),
      600: Color(0xFF6D4C41),
      700: Color(0xFF5D4037),
      800: Color(0xFF4E342E),
      900: Color(0xFF3E2723),
    },
  );
  static const int _brownPrimaryValue = 0xFF795548;

  /// The grey primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.grey.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blueGrey.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.brown.png)
  ///
  /// This swatch has no corresponding accent swatch.
  ///
  /// This swatch, in addition to the values 50 and 100 to 900 in 100
  /// increments, also features the special values 350 and 850. The 350 value is
  /// used for raised button while pressed in light themes, and 850 is used for
  /// the background color of the dark theme. See [ThemeData.brightness].
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.grey[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [blueGrey] and [brown], somewhat similar colors.
  ///  * [negro], [negro87], [negro54], [negro45], [negro38], [negro26], [negro12], which
  ///    provide a different approach to showing shades of grey.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor gris = MaterialColor(
    _greyPrimaryValue,
    <int, Color>{
      50: Color(0xFFFAFAFA),
      100: Color(0xFFF5F5F5),
      200: Color(0xFFEEEEEE),
      300: Color(0xFFE0E0E0),
      350: Color(
          0xFFD6D6D6), // only for raised button while pressed in light theme
      400: Color(0xFFBDBDBD),
      500: Color(_greyPrimaryValue),
      600: Color(0xFF757575),
      700: Color(0xFF616161),
      800: Color(0xFF424242),
      850: Color(0xFF303030), // only for background color in dark theme
      900: Color(0xFF212121),
    },
  );
  static const int _greyPrimaryValue = 0xFF9E9E9E;

  /// The blue-grey primary color and swatch.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blueGrey.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.grey.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.cyan.png)
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/Colors.blue.png)
  ///
  /// This swatch has no corresponding accent swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.blueGrey[400],
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Vea tambien:
  ///
  ///  * [grey], [cyan], and [blue], similar colors.
  ///  * [Theme.of], which allows you to select colors from the current theme
  ///    rather than hard-coding colors in your build methods.
  static const MaterialColor azulGris = MaterialColor(
    _blueGreyPrimaryValue,
    <int, Color>{
      50: Color(0xFFECEFF1),
      100: Color(0xFFCFD8DC),
      200: Color(0xFFB0BEC5),
      300: Color(0xFF90A4AE),
      400: Color(0xFF78909C),
      500: Color(_blueGreyPrimaryValue),
      600: Color(0xFF546E7A),
      700: Color(0xFF455A64),
      800: Color(0xFF37474F),
      900: Color(0xFF263238),
    },
  );
  static const int _blueGreyPrimaryValue = 0xFF607D8B;

  /// The material design primary color swatches, excluding grey.
  static const List<MaterialColor> primaries = <MaterialColor>[
    rojo,
    rosado,
    morado,
    moradoProfundo,
    indigo,
    azul,
    claroAzul,
    cian,
    verdeAzulado,
    verde,
    claroVerde,
    lima,
    amarillo,
    ambar,
    naranja,
    naranjaProfundo,
    marron,
    // The grey swatch is intentionally omitted because when picking a color
    // randomly from this list to colorize an application, picking grey suddenly
    // makes the app look disabled.
    azulGris,
  ];

  /// The material design accent color swatches.
  static const List<MaterialAccentColor> accents = <MaterialAccentColor>[
    rojoAcento,
    rosadoAcento,
    moradoAcento,
    moradoProfundoAcento,
    indigoAcento,
    azulAcento,
    claroAzulAcento,
    cianAcento,
    verdeAzuladoAcento,
    verdeAcento,
    claroVerdeAcento,
    limaAcento,
    amarilloAcento,
    ambarAcento,
    naranjaAcento,
    naranjaProfundoAcento,
  ];
}
