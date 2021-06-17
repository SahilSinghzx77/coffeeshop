import 'package:flutter/material.dart';
import 'home.dart';


class cfCard extends StatelessWidget {
  String coffee='',coffeeDescription='';
  double price=0;
  bool isFav = false;
  bool ordered = false;

  cfCard(String coffee, String coffeeDescription, double price){
    this.coffee=coffee;
    this.coffeeDescription=coffeeDescription;
    this.price=price;
    CoffeeHome.cfList.add(this);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
