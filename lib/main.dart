
// ignore_for_file: prefer_const_constructors

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
         title: const Text("Ejercicio 15 de nov"),
         backgroundColor: Colors.deepOrange,
       ),
       body: Center(
        child: Column(
          children: [
             Text(
           "Prograacion Movil",
           style: TextStyle(
             fontSize: 32,
             fontWeight: FontWeight.bold,
             color: Colors.orange[600]),
             ),
              Text(
           "Hola Mundo",
           style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.orange[400]),
             ),
          Image.network(
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fprezi.com%2Fp-wdancerp-l%2Funicah%2F&psig=AOvVaw37OQvLkbaBgaX2pQp10JLi&ust=1637106665198000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNjBjNzHm_QCFQAAAAAdAAAAABAJ"
            ,height: 350,),
          ],
        ),  
         ),
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
