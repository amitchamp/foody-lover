import 'package:flutter/material.dart';

// Screens
import './menu_item_screen.dart';

class RestaurantDetailScreen extends StatefulWidget {

  static const routeName = "/restaurant-detail";

  @override
  State<StatefulWidget> createState() => _RestaurantDetailScreenState();
}

class _RestaurantDetailScreenState extends State<RestaurantDetailScreen> {

  Widget _restaurantDetail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Pizza Hut", style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),),
        Text("Janakpuri, Near Metro Palam Metro Station", style: TextStyle(color: Colors.grey),),
        SizedBox(height: 5,),
        Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.star, size: 16, color: Colors.green,),
                Icon(Icons.star, size: 16, color: Colors.green,),
                Icon(Icons.star, size: 16, color: Colors.green,),
                Icon(Icons.star, size: 16, color: Colors.green,),
                Icon(Icons.star, size: 16, color: Colors.grey,),
              ],
            ),
            SizedBox(width: 5,),
            Text("( 245 Reviews )", style: TextStyle(color: Colors.grey),),
          ],
        ),
        SizedBox(height: 25,),
        Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Delivery", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                Text("Free", style: TextStyle(color: Colors.grey),)
              ],
            ),
            SizedBox(width: 60,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Open Time", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                Text("08:00", style: TextStyle(color: Colors.grey),)
              ],
            ),
          ],
        ),
        SizedBox(height: 10,),
        Divider(
          thickness: 1,
          color: Colors.green,
        ),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300]
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6, left: 5),
                      child: Icon(Icons.comment, color: Colors.black87,),
                    ),
                  ],
                ),
                SizedBox(width: 20,),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300]
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6, left: 5),
                      child: Icon(Icons.star_border, color: Colors.black87,),
                    ),
                  ],
                ),
                SizedBox(width: 20,),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300]
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6, left: 5),
                      child: Icon(Icons.place, color: Colors.black87,),
                    ),
                  ],
                ),
              ],
            ),
            GestureDetector(
              child: Container(
                width: 120,
                height: 35,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.all(),
                  border: Border.fromBorderSide(BorderSide(color: Colors.green)),
                  borderRadius: BorderRadius.circular(15),
                  shape: BoxShape.rectangle,
                ),
                child: Center(child: Text("Contact", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),)),
              ),
            )
          ],
        ),
        SizedBox(height: 5,),
        Divider(
          thickness: 1,
          color: Colors.green,
        ),
      ],
    );
  }

  Widget _popularItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 8),
          child: Text("Featured Delicious Items",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 240,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return (
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(height: 10,),
                    Text("Cruncy Pizzaaaa", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    Text("\$25.00", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),),
                  ],
                )
              );
            },
          ),
        )
      ],
    );
  }

  Widget _menuItems() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 15, bottom: 8,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("MENU", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Row(
                children: <Widget>[
                  Text("View all", style: TextStyle(fontSize: 13),),
                  Icon(Icons.navigate_next, size: 18,),
                ],
              )
            ],
          ),
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) {
                        return MenuItemScreen();
                      },
                      fullscreenDialog: true,
                    ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Popular Items", style: TextStyle(fontWeight: FontWeight.w500),),
                      Row(
                        children: <Widget>[
                          Text("10", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),),
                          Icon(Icons.navigate_next, color: Colors.grey,),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.green,
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _customerReviews() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 8,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("REVIEW", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Row(
                children: <Widget>[
                  Text("View all", style: TextStyle(fontSize: 13),),
                  Icon(Icons.navigate_next, size: 18,),
                ],
              )
            ],
          ),
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/pizza_1.jpg"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Vincent King", style: TextStyle(fontWeight: FontWeight.bold,),),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.star, size: 15, color: Colors.green,),
                                  Icon(Icons.star, size: 15, color: Colors.green,),
                                  Icon(Icons.star, size: 15, color: Colors.green,),
                                  Icon(Icons.star, size: 15, color: Colors.green,),
                                  Icon(Icons.star, size: 15, color: Colors.grey,),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text("April 22, 2020", style: TextStyle(fontSize: 12, color: Colors.grey),),
                          SizedBox(height: 10,),
                          Text("we been there yesterday for dinner, orderd tandoori lobster and cruncy pizza and few mains and biryani", 
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.green,
                ),
              ],
            );
          }
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza Hut", style: TextStyle(color: Colors.black),),
        backgroundColor: Color.fromRGBO(234, 234, 234, 1),
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 30),
        child: Column(
          children: <Widget>[
            _restaurantDetail(),
            _popularItem(),
            _menuItems(),
            _customerReviews(),
          ],
        ),
      ),
      // backgroundColor: Color.fromRGBO(234, 234, 234, 1),
    );
  }
}
