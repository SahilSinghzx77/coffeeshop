import 'package:coffeeshop/services/auth.dart';
import 'package:flutter/material.dart';

import 'Card.dart';
import '../cfFavorite.dart';
import '../coffeeoftheday.dart';
import '../ordered.dart';

class CoffeeHome extends StatefulWidget {
  static List<cfCard> cfList= [];

  @override
  _CoffeeHomeState createState() => _CoffeeHomeState();
}

class _CoffeeHomeState extends State<CoffeeHome> {

  AuthService _auth=AuthService();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.00,
          actions: [
            IconButton(
              icon: Icon(
                Icons.logout,
                color: Colors.orange[400],
              ),
              onPressed: () async {
                return await _auth.signOut();
              },
            )
          ],
        ),
        backgroundColor: Colors.brown[50],
        body: ListView(
          children: [
            SizedBox(height:50),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0,0,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome, Nadia',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            color: Colors.brown[900],
                            fontSize: 35
                        ),
                      ),
                      SizedBox(width: 60),
                      Container(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7BPKzUAxMUoZoSZm7Wdw-vlYvDSUSnJyEUKOz8qO965M4TBtRGhjlAStVjVsM5j_xCDU&usqp=CAU'),

                          radius: 30,
                        ),
                      )
                    ],

                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text(
                    'Lets select the best taste for your next\ncoffee break!',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.brown[400]
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text(
                    'Taste of the week',
                    style: TextStyle(
                        color: Colors.brown[900],
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height:15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Stack(
                    children: [
                      cfCard('cafe misto','A coffee drink with a double espresso and lightly frosted milk. Served in a glass.',4.99),
                      Positioned(
                        // left: 70,
                        child: Container(
                          padding: EdgeInsets.symmetric(),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7BPKzUAxMUoZoSZm7Wdw-vlYvDSUSnJyEUKOz8qO965M4TBtRGhjlAStVjVsM5j_xCDU&usqp=CAU'),
                          ),

                          width: 100,
                          height: 100,
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      cfCard('Latte','An espresso with steamed milk and only a little milk foam poured over it.',4.99),
                      Container(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7BPKzUAxMUoZoSZm7Wdw-vlYvDSUSnJyEUKOz8qO965M4TBtRGhjlAStVjVsM5j_xCDU&usqp=CAU'),
                        ),
                        width: 100,
                        height: 100,
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      cfCard('Espresso','A short, strong drink (about 30 - 40 ml) served in an espresso cup.',4.99),
                      Container(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7BPKzUAxMUoZoSZm7Wdw-vlYvDSUSnJyEUKOz8qO965M4TBtRGhjlAStVjVsM5j_xCDU&usqp=CAU'),
                        ),
                        width: 100,
                        height: 100,
                      )
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text(
                    'Today\'s Special',
                    style: TextStyle(
                        color: Colors.brown[900],
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            cfoftheday(),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text(
                    'Regulars',
                    style: TextStyle(
                        color: Colors.brown[900],
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Center(
              child: Stack(
                children: [
                  cfCard('caffe mocha','A caffè latte with chocolate and whipped cream.',4.99),
                  Container(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7BPKzUAxMUoZoSZm7Wdw-vlYvDSUSnJyEUKOz8qO965M4TBtRGhjlAStVjVsM5j_xCDU&usqp=CAU'),
                    ),
                    width: 100,
                    height: 100,
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Stack(
                children: [
                  cfCard('Brew coffee','cold beverage prepared by brewing. ',4.99),
                  Container(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7BPKzUAxMUoZoSZm7Wdw-vlYvDSUSnJyEUKOz8qO965M4TBtRGhjlAStVjVsM5j_xCDU&usqp=CAU'),
                    ),
                    width: 100,
                    height: 100,
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Stack(
                children: [
                  cfCard('caffe au lait',' Made by mixing dark roasted filter coffee and warm milk.',4.99),
                  Container(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7BPKzUAxMUoZoSZm7Wdw-vlYvDSUSnJyEUKOz8qO965M4TBtRGhjlAStVjVsM5j_xCDU&usqp=CAU'),
                    ),
                    width: 100,
                    height: 100,
                  )
                ],
              ),
            ),


          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.brown[200],
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                  }, icon: Icon(Icons.home),

                ),
                // icon: Icon(Icons.home),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>yourOrders()));
                  }, icon: Icon(Icons.coffee),

                ),
                // icon: Icon(Icons.coffee),
                label: 'Orders'
            ),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>favorite()));
                  }, icon: Icon(Icons.favorite),

                ),
                // icon: Icon(Icons.favorite),
                label: 'Favorites'

            ),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                  }, icon: Icon(Icons.account_circle),

                ),
                // icon: Icon(Icons.account_circle),
                label: 'Profile'
            ),

          ],
          selectedItemColor: Colors.brown[900],
        ),
      ),
    );
  }
}
