import 'package:cadastro/data/dummy_users.dart';
import 'package:flutter/material.dart';
import 'package:cadastro/views/user_list.dart';
import 'package:cadastro/models/user.dart';

void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter Demo',
theme: ThemeData(
primarySwatch: Colors.blue,
visualDensity:
VisualDensity.adaptivePlatformDensity,
),
home: UserList(),
);
}
}

class UserList extends StatelessWidget {
@override
Widget build(BuildContext context) {
const users = {...DUMMY_USERS};
return Scaffold(
appBar: AppBar(
title: Text('Lista de usuários'),
),
body: ListView.builder(
itemCount: users.length,
itemBuilder: (ctx, i) => Text(users.values.elementAt(i).name),
),);}}