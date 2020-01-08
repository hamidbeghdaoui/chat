import 'package:flutter/material.dart';
class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> category = ["Messages","Online","Groups","Requests"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.blue,
      child:ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (BuildContext context , int index){
         return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 30),
              child: Text(
                category[index],
                style: TextStyle(
                  color: index == selectedIndex ?Colors.white : Colors.white60,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 1.5
                ),
                ),
         );
        },
      )
    );
  }
}