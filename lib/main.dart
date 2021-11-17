
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
             Padding(padding: EdgeInsets.all(25),
             child: Text("Hola Mundo",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.orange[400]),),),
              
            
            Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',height: 350,),
            ElevatedButton(onPressed: () {
              showDialog(context: context, builder: (context)
              {
                return AlertDialog(
                  title: Text("Contacto"),
                  content: Text("Escribanos: Ejemplo12@gmail.com"),
                  actions: <Widget> [ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Cerrar"),)],
                );
              });
            }, child: Text("Contacto")),

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
