import 'package:flutter_app/Models/user_model.dart';

class Message {
  final User usersend;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({this.usersend, this.time, this.text, this.isLiked, this.unread});
}

final User hamid = User(id: 10, name: 'hamid', imageURL: 'assets/image/6.jpg');
final User walid = User(id: 0, name: 'walid', imageURL: 'assets/image/1.jpg');

final User oussama =
    User(id: 1, name: 'oussama', imageURL: 'assets/image/2.jpg');

final User younes = User(id: 2, name: 'younes', imageURL: 'assets/image/3.jpg');
final User ahlam = User(id: 3, name: 'ahlam', imageURL: 'assets/image/4.jpg');
final User abdelnmour =
    User(id: 4, name: 'abd elnmour', imageURL: 'assets/image/5.jpg');
final User karim = User(id: 5, name: 'karim', imageURL: 'assets/image/6.jpg');
final User merouan =
    User(id: 7, name: 'merouan', imageURL: 'assets/image/8.jpg');
final User farid = User(id: 8, name: 'farid', imageURL: 'assets/image/10.jpg');
final User sohila = User(id: 9, name: 'sohila', imageURL: 'assets/image/9.jpg');

List<User> favorites = [
  hamid,
  walid,
  oussama,
  younes,
  ahlam,
  karim,
  merouan,
  farid,
  sohila
];

List<Message> chate = [
  Message(
      usersend: walid,
      time: '4:30 PM',
      text: 'hey ,How is it going ? what did you do tody ?',
      isLiked: true,
      unread: true),
  Message(
      usersend: abdelnmour,
      time: '3:23 PM',
      text: 'hey ,How is it going ? what did you do tody ?',
      isLiked: false,
      unread: false),
  Message(
      usersend: karim,
      time: '2:30 PM',
      text: 'hey ,How is it going ? what did you do tody ?',
      isLiked: true,
      unread: true),
  Message(
      usersend: sohila,
      time: '17:00 PM',
      text: 'hey ,How is it going ? what did you do tody ?',
      isLiked: true,
      unread: false),
  Message(
      usersend: farid,
      time: '20:56 PM',
      text: 'hey ,How is it going ? what did you do tody ?',
      isLiked: true,
      unread: false),
  Message(
      usersend: merouan,
      time: '10:56 PM',
      text: 'hey ,How is it going ? what did you do tody ?',
      isLiked: true,
      unread: true),
  Message(
      usersend: ahlam,
      time: '01:56 PM',
      text: 'hey ,How is it going ? what did you do tody ?',
      isLiked: false,
      unread: false),
];

List<Message> messages = [
  Message(
      usersend: hamid,
      time: '12:36 PM',
      text: 'Thank you',
      isLiked: false,
      unread: false),
  Message(
      usersend: walid,
      time: '12:36 PM',
      text: 'in the next time ,We go together',
      isLiked: false,
      unread: false),
  Message(
      usersend: hamid,
      time: '12:34 PM',
      text: 'beautiful thing ,I wish I went with you',
      isLiked: true,
      unread: false),
  Message(
      usersend: walid,
      time: '12:34 PM',
      text: 'I went to the sea ,The sea was beautiful !',
      isLiked: true,
      unread: true),
  Message(
      usersend: hamid,
      time: '12:33 PM',
      text: 'I went to university ,and you ?',
      isLiked: true,
      unread: true),
  Message(
      usersend: walid,
      time: '12:33 PM',
      text: 'el hamdlm , what did you do tody ?',
      isLiked: true,
      unread: false),
  Message(
      usersend: hamid,
      time: '12:23 PM',
      text: 'slam ,el hamdlm, and you ?',
      isLiked: false,
      unread: false),
  Message(
      usersend: walid,
      time: '8:30 PM',
      text: 'slam ,how are you ?',
      isLiked: true,
      unread: true),
];
