import 'package:flutter/material.dart';
import 'Widgets/category_selector.dart';
 class HomeScreen extends StatefulWidget {
   @override
   _HomeScreenState createState() => _HomeScreenState();
 }
 
 class _HomeScreenState extends State<HomeScreen> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
         appBar: AppBar(
           leading: IconButton(
             icon: Icon(Icons.menu),
             iconSize: 30,
             color: Colors.white,
             onPressed: (){},
           ),
           centerTitle: true
          ,
           title: Text(
             "Chats",
             textAlign: TextAlign.center,
             style: TextStyle(
               fontSize: 28,
               fontWeight: FontWeight.bold,
             ),
             
             
           ),
           elevation: 0,
           actions: <Widget>[
              IconButton(
             icon: Icon(Icons.search),
             iconSize: 30,
             color: Colors.white,
             onPressed: (){},
           ),
           ],
         ),
         body: Column(
           children: <Widget>[
             CategorySelector(),
           ],
         ),
     );

   }
 }
 



