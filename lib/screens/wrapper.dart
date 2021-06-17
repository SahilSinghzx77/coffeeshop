import 'package:coffeeshop/home/home.dart';
import 'package:coffeeshop/models/my_user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user=Provider.of<MyUser>(context);

    if(user==null){
      return Authenticate();
    }
    else {
      return CoffeeHome();
    }
  }
}