
import 'package:flutter/material.dart';

//Creacion de constructor principal de dart
void main()
{
  runApp(Myapp());
}

class Myapp extends StatelessWidget
{
   @override 

   Widget build(BuildContext context) {
     return MaterialApp(
       home: HomePage(),
     );
   }
}

//Creacion de Clase y imprimimos hola mundo en pantalla
class HomePage extends StatelessWidget {
    @override 

   Widget build(BuildContext context) {
     return Text("Hola Mundo");
   }
}
