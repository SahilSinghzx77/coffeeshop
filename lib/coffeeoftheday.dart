import 'package:flutter/material.dart';

import 'home/Card.dart';
import 'home/home.dart';

class cfoftheday extends StatelessWidget {
  const cfoftheday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500,
          child: Container(
            child: Card(
              color: Colors.brown[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7BPKzUAxMUoZoSZm7Wdw-vlYvDSUSnJyEUKOz8qO965M4TBtRGhjlAStVjVsM5j_xCDU&usqp=CAU'),
                          radius: 90,
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Center(
                      child: Text(
                        'Affogato',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Espresso poured on a vanilla ice cream. Served in a cappuccino cup.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '\$6.99',
                      style: TextStyle(
                          color: Colors.brown[900],
                          fontSize: 50,
                          fontWeight: FontWeight.bold
                      ),

                    ),

                  ],
                ),
              ),
            ),
          ),

        ),
        Container(
          height: 60,
          width: 500,
          child: Card(
            color: Colors.brown[900],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () {
                    cfCard x = new cfCard('Affogato', 'Espressoo poured on a vanilla ice cream served in a cappuccino cup', 6.99);
                    x.ordered = true;
                    CoffeeHome.cfList.add(x);
                  },
                  child: Text(
                    'Order Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),

                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
