import 'package:flutter/material.dart';

class FoodListScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _FoodListScreenState();
}

class _FoodListScreenState extends State<FoodListScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Trending", style: TextStyle(color: Colors.black87),),
        backgroundColor: Color.fromRGBO(234, 234, 234, 1),
      ),
      body: GridView.count(
        childAspectRatio: .61,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 25,
        children: List.generate(10, (index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                  child: Image(
                    image: AssetImage("assets/images/pizza_1.jpg"),
                    height: 190,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Crispy Pizza", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                      SizedBox(height: 2,),
                      Text("Pizza Hut", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),),
                      SizedBox(height: 7,),
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
                            ],
                          ),
                          Text("\$10", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // margin: EdgeInsets.only(right: 10, bottom: 10),
          );
        }),
        padding: EdgeInsets.all(10),
      ),
      backgroundColor: Color.fromRGBO(234, 234, 234, 1),
    );
  }
}
