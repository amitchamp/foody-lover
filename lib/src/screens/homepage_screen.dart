import 'package:flutter/material.dart';

class HomepageScreen extends StatefulWidget {

  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {

  Widget _homepageSlider() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 15, bottom: 8),
          child: Text("Exclusive Offers",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    height: 180,
                    width: 330,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        width: 330,
                        height: 180,
                        image: AssetImage('assets/images/banner_1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ) ,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    height: 180,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.black87.withOpacity(0.3),
                          Colors.black54.withOpacity(0.3),
                          Colors.black38.withOpacity(0.3),
                        ],
                        stops: [0.1, 0.4, 0.6, 0.9],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text("Reservation", 
                              style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            Container(
                              height: 2,
                              width: 80,
                              color: Colors.green,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Get Flat 15% Cashback", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),),
                            Text("First 3 Orders", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        )
      ],
    );
  }

  Widget _trandingFood() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 30, right: 15, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Trending food",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("View all", style: TextStyle(fontWeight: FontWeight.w400),)
            ],
          ),
        ),
        Container(
          height: 240,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 240,
                    margin: EdgeInsets.only(right: 25, top: 40),
                    padding: EdgeInsets.only(top: 130, left: 10, right: 10, bottom: 10),
                    // color: Colors.white,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Double Cheese Pizzaa", style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("0.4 km away", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.star, size: 15, color: Colors.green,),
                                Icon(Icons.star, size: 15, color: Colors.green,),
                                Icon(Icons.star, size: 15, color: Colors.green,),
                                Icon(Icons.star, size: 15, color: Colors.green,),
                                Icon(Icons.star, size: 15, color: Colors.grey,),
                                Text("4.9(55)", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 11),),
                              ],
                            ),
                            Icon(Icons.favorite, size: 18, color: Colors.grey,)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image(
                        height: 160,
                        width: 220,
                        image: AssetImage("assets/images/pizza_1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Foody Lover...", style: TextStyle(color: Colors.black87),),
        backgroundColor: Color.fromRGBO(234, 234, 234, 1),
        actions: <Widget>[
          GestureDetector(
            child: Container(
              child: Icon(Icons.search, color: Colors.black87,),
              padding: EdgeInsets.only(right: 15),
            ),
            onTap: () {
              print("Search....");
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _homepageSlider(),
            _trandingFood(),
            _trandingFood(),
            _trandingFood()
          ],
        ),
        padding: EdgeInsets.only(left: 15),
      ),
      backgroundColor: Color.fromRGBO(234, 234, 234, 1),
    );
  }
}
