import 'package:flutter/material.dart';
import 'package:flutter_app/Models/message_model.dart';

class RecentChats extends StatefulWidget {
  @override
  _RecentChatsState createState() => _RecentChatsState();
}

class _RecentChatsState extends State<RecentChats> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: ListView.builder(
          itemCount: chate.length,
          itemBuilder: (BuildContext context, int index) {
            final Message chats = chate[index];
            return Container(
              margin: EdgeInsets.only(top: 5 , bottom: 5 , right: 16),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              decoration: BoxDecoration(
                color: (chats.unread)?Colors.white : Color(0xFFFFEFEE),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20)
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(chats.usersend.imageURL),
                    radius: 31,
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        chats.usersend.name,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.1),
                      ),
                      SizedBox(height: 6,),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          chats.text,
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.1),
                              overflow: TextOverflow.ellipsis,
                        ),
                       
                      )
                      ,
                    ],
                  )),
                  Column(
                    children: <Widget>[
                      Text(
                        chats.time,
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      SizedBox(height: 8,),
                      (!chats.unread) ?Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "New",
                          style: TextStyle(fontSize: 10 , color: Colors.white , fontWeight: FontWeight.bold),
                        ),
                      ) : SizedBox.shrink(),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
