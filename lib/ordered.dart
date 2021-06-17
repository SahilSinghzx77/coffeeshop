import 'package:flutter/material.dart';
import 'home/Card.dart';
import 'home/home.dart';

class yourOrders extends StatelessWidget {
  const yourOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 10,),
              Text(
                'Your orders',
                style: TextStyle(
                    color: Colors.brown[900],
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          SizedBox(height: 30),
          // for(cfCard x in  CoffeeHome.cfList) if(x.isFav) Text(x.coffee)
          for(cfCard x in  CoffeeHome.cfList) if(x.ordered) Container(
            child: Container(
              height: 100,
              width: 400,
              child: Card(
                color: Colors.brown[200],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)
                ),
                child: Center(
                  child: Text(
                    x.coffee,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
