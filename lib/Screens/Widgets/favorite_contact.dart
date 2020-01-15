import 'package:flutter/material.dart';
import 'package:flutter_app/Models/message_model.dart';

import '../chat_sceen.dart';
class FavoriteContact extends StatefulWidget {
  @override
  _FavoriteContactState createState() => _FavoriteContactState();
}

class _FavoriteContactState extends State<FavoriteContact> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "favorite contacts",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2
                ),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_horiz),
                iconSize: 30,
                color: Colors.blueGrey,
              ),
             
             
            ],
          ),
        ),
        Container(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: favorites.length,
            itemBuilder: (BuildContext context, int  index){
               return Padding(
                 padding: const EdgeInsets.all(6),
                 child: GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(
                builder: (_)=>ChatSceen(
                  user: favorites[index],
                ),
              )),
                                    child: Column(
                     children: <Widget>[
                       CircleAvatar(
                         backgroundImage: AssetImage(favorites[index].imageURL),
                         radius: 30,
                       ),
                       SizedBox(height: 5,),
                       Text(favorites[index].name , style: TextStyle(color: Colors.blueGrey),)
                     ],
                   ),
                 ),
               );
            },
          ),
        )
      ],
    );
  }
}