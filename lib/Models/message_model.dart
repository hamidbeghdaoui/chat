import 'package:flutter_app/Models/user_model.dart';

class Message {
  final User usersend;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({this.usersend,this.time,this.text,this.isLiked,this.unread});

}
  
  final User walid = User(
     id: 0,
     name: 'walid',
     imageURL: 'assets/image/1.jpg'
  );

  final User oussama = User(
     id: 1,
     name: 'oussama',
     imageURL: 'assets/image/2.jpg'
  );

  final User younes = User(
     id: 2,
     name: 'younes',
     imageURL: 'assets/image/3.jpg'
  );
  final User ahlam = User(
     id: 3,
     name: 'karim',
     imageURL: 'assets/image/4.jpg'
  );
  final User abdelnmour = User(
     id: 4,
     name: 'abd elnmour',
     imageURL: 'assets/image/5.jpg'
  );
  final User karim = User(
     id: 5,
     name: 'karim',
     imageURL: 'assets/image/6.jpg'
  );
  final User amine = User(
     id: 6,
     name: 'amine',
     imageURL: 'assets/image/7.jpg'
  );
  final User merouan = User(
     id: 7,
     name: 'merouan',
     imageURL: 'assets/image/8.jpg'
  );
  final User farid = User(
     id: 8,
     name: 'farid',
     imageURL: 'assets/image/9.jpg'
  );
  final User sohila = User(
     id: 9,
     name: 'sohila',
     imageURL: 'assets/image/10.jpg'
  );

  



  List <User> favorites = [walid,oussama,younes,ahlam,karim,amine,merouan,farid,sohila];

  List <Message> chate = [
    Message(
      usersend: walid,
      time: '4:30 PM',
      text: 'hey ,How is it going ? what did you do tody ?',
      isLiked: true,
      unread: false
          ),
    Message(
      usersend: abdelnmour,
      time: '4:30 PM',
      text: 'hey ,How is it going ? what did you do tody ?',
      isLiked: true,
      unread: false
          ),
    Message(
      usersend: karim,
      time: '4:30 PM',
      text: 'hey ,How is it going ? what did you do tody ?',
      isLiked: true,
      unread: false
          ),
    Message(
      usersend: sohila,
      time: '4:30 PM',
      text: 'hey ,How is it going ? what did you do tody ?',
      isLiked: true,
      unread: false
          ),
    Message(
      usersend: walid,
      time: '4:30 PM',
      text: 'hey ,How is it going ? what did you do tody ?',
      isLiked: true,
      unread: false
          ),

    ];


