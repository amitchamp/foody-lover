import 'package:flutter/material.dart';

// Screens
import './resturant_detail_screen.dart';

class RestaurantListScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _RestaurantListScreenState();
}

class _RestaurantListScreenState extends State<RestaurantListScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurants", style: TextStyle(color: Colors.black87),),
        backgroundColor: Color.fromRGBO(234, 234, 234, 1),
      ),
      body: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.symmetric(vertical: 10),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(RestaurantDetailScreen.routeName);
            },
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 15),
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image(
                      image: AssetImage('assets/images/pizza_1.jpg'),
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("The Curry Leaf", 
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4,),
                          Text("North Indian, Mughlai, Indian, Chinese, Kebabs, Beverages",
                            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 7,),
                          Text("No minimum order upto 1 km",
                            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 11),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 16,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(Icons.star, size: 15, color: Colors.green,),
                                  Icon(Icons.star, size: 15, color: Colors.green,),
                                  Icon(Icons.star, size: 15, color: Colors.green,),
                                  Icon(Icons.star, size: 15, color: Colors.green,),
                                  Icon(Icons.star, size: 15, color: Colors.grey,),
                                ],
                              ),
                              Text("\$150 FOR TWO", style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
