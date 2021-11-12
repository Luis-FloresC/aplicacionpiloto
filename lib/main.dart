
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
       title: "Ejercicio de Insercion de texto",
       home: HomePage(),
     );
   }
}

//Creacion de Clase y imprimimos hola mundo en pantalla
//Creacion de widget de pagian de inicio
class HomePage extends StatelessWidget {
    final myField = TextEditingController();
    @override 

   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Mi App"),
       ),
       body: Padding(padding: const EdgeInsets.all(16.0),child: TextField(controller: myField,)),
       floatingActionButton: FloatingActionButton(onPressed: (){
         showDialog(context: context, builder: (context)
         {
           return AlertDialog(
             content: Text(myField.text),
           );
         });
       },
       child: Icon(Icons.add,)),
     );
   }
}
