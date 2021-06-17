// @dart=2.9
import 'package:coffeeshop/home/home.dart';
import 'package:coffeeshop/screens/wrapper.dart';
import 'package:coffeeshop/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/my_user.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(StreamProvider<MyUser>.value(
    value: AuthService().stuser,
    child: MaterialApp(
      home: Wrapper(),
    ),
  ));
}