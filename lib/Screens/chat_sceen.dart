import 'package:flutter/material.dart';
import 'package:flutter_app/Models/message_model.dart';
import 'package:flutter_app/Models/user_model.dart';

class ChatSceen extends StatefulWidget {
  final User user;
  ChatSceen({this.user});
  @override
  _ChatSceenState createState() => _ChatSceenState();
}

class _ChatSceenState extends State<ChatSceen> {
  _BuildMessage(Message m, bool isMe) {
    return Row(
      mainAxisAlignment: isMe
              ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          margin: EdgeInsets.only(top: 8, bottom: 8, left: 5,right: 5),
              
          decoration: BoxDecoration(
              color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
              borderRadius: isMe
                  ? BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(5),
                      topRight: Radius.circular(5))
                  : BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      topRight: Radius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                m.time,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 10,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                m.text,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
         isMe ?IconButton(
            icon: m.isLiked ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
            iconSize: 30,
            color: m.isLiked ? Theme.of(context).primaryColor: Colors.blueGrey,
            onPressed: () {},
          ) :Text(''),
      ],
    );
  }
  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.image),
            iconSize: 25,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: "send a message ... "
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 25,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          widget.user.name,
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1.6),
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                ),
                child: ListView.builder(
                  reverse: true,
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Message m = messages[index];
                    bool isMe = m.usersend.id == hamid.id;
                    return _BuildMessage(m, isMe);
                  },
                ),
              ),
            ),
          ),
          _buildMessageComposer()
                  ],
                ),
              );
            }
          
           
}
