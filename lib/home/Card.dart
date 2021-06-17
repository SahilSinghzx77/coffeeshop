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
    return Column(
      children: [
        SizedBox(width: 10),
        Container(
          height: 300,
          width: 250,
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
                  SizedBox(height: 100),
                  Text(
                    coffee,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    coffeeDescription,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '\$$price',
                        style: TextStyle(
                            color: Colors.brown[900],
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                        ),

                      ),
                      SizedBox(width: 20),
                      FlatButton(
                        onPressed: ()  {
                          isFav = !isFav;
                        },
                        child:
                        Icon(Icons.favorite_border,
                          size: 40,
                        ),
                      )

                    ],
                  ),


                ],
              ),
            ),
          ),
        ),
        Container(
          height: 60,
          width: 250,
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
                    this.ordered = true;
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>yourOrders()));
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
