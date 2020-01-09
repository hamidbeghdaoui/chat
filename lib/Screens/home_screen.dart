import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Widgets/favorite_contact.dart';
import 'Widgets/category_selector.dart';
 class HomeScreen extends StatefulWidget {
   @override
   _HomeScreenState createState() => _HomeScreenState();
 }
 
 class _HomeScreenState extends State<HomeScreen> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
         backgroundColor: Theme.of(context).primaryColor,
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
               fontSize: 24,
               fontWeight: FontWeight.bold,
               letterSpacing: 1.6
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
             Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  ),
                ),
                child: FavoriteContact(),
              ),
             )
           ],
         ),
     );

   }
 }
 



