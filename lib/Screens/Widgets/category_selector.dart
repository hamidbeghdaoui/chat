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
      height: 80,
      color: Theme.of(context).primaryColor,
      child:ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (BuildContext context , int index){
         return GestureDetector(
           onTap: (){
             setState(() {
               selectedIndex = index;
             });
           },
           child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15 , vertical: 20),
              child: Text(
                category[index],
                style: TextStyle(
                  color: index == selectedIndex ?Colors.white : Colors.white60,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  letterSpacing: 1.5
                ),
                ),
         ),
         );
        },
      )
    );
  }
}