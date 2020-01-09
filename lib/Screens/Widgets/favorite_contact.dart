import 'package:flutter/material.dart';
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
        )
      ],
    );
  }
}