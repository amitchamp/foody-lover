import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Widget _mainProfileSection() {
      return Container(
        height: 160,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/pizza_1.jpg"),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Amit Kumar Sharma", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    SizedBox(height: 5,),
                    Text("amit.champ@yahoo.com", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            Divider(
              color: Colors.green,
              thickness: 1,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Accounts Credit", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),),
                Text("\$50.00", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),)
              ],
            ),
          ],
        ),
      );
    }

    Widget _recentOrders() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15, bottom: 8),
            child: Text("Recend Orders",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                if (index == 4) {
                  return Container(
                    width: 100,
                    margin: EdgeInsets.only(right: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0
                        ),
                      ],
                    ),
                    child: Icon(Icons.add_circle, color: Colors.green, size: 50,),
                  );
                }
                return Container(
                  width: 260,
                  margin: EdgeInsets.only(right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image(
                          image: AssetImage("assets/images/pizza_1.jpg"),
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Crispy Pizza", style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 4,),
                          Text("Pizz Hut", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),),
                          SizedBox(height: 4,),
                          Text("April 22, 2020", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),),
                          SizedBox(height: 4,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("\$50.00", style: TextStyle(fontWeight: FontWeight.w500),),
                              SizedBox(width: 60,),
                              Icon(Icons.add_circle, color: Colors.green,)
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      );
    }

    Widget _othersUserLinks() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        // height: 800,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0
            )
          ]
        ),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Payment Cards", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          SizedBox(height: 4,),
                          Text("Add a debit or credit card", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13, color: Colors.grey),),
                        ],
                      ),
                      Icon(Icons.navigate_next, color: Colors.grey, size: 28,),
                    ],
                  ),
                );

              case 1:
                return Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Address", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          SizedBox(height: 4,),
                          Text("Add or remove delivery address", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13, color: Colors.grey),),
                        ],
                      ),
                      Icon(Icons.navigate_next, color: Colors.grey, size: 28,),
                    ],
                  ),
                );

              case 2:
                return Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Refer Friends", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          SizedBox(height: 4,),
                          Text("Get \$10.00 Free", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13, color: Colors.green),),
                        ],
                      ),
                      Icon(Icons.navigate_next, color: Colors.grey, size: 28,),
                    ],
                  ),
                );

              case 3:
                return Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.question_answer, color: Colors.pink,),
                          SizedBox(width: 8,),
                          Text("Delivery Support", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                        ],
                      ),
                      Icon(Icons.navigate_next, color: Colors.grey, size: 28,),
                    ],
                  ),
                );

              case 4:
                return Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.settings, color: Colors.blue,),
                          SizedBox(width: 8,),
                          Text("Settings", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                        ],
                      ),
                      Icon(Icons.navigate_next, color: Colors.grey, size: 28,),
                    ],
                  ),
                );

              case 5:
                return Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.exposure, color: Colors.lightGreen,),
                          SizedBox(width: 8,),
                          Text("Term of use", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                        ],
                      ),
                      Icon(Icons.navigate_next, color: Colors.grey, size: 28,),
                    ],
                  ),
                );


              case 6:
                return Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.lock, color: Colors.green,),
                          SizedBox(width: 8,),
                          Text("Privacy Policy", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                        ],
                      ),
                      Icon(Icons.navigate_next, color: Colors.grey, size: 28,),
                    ],
                  ),
                );

              case 7:
                return Container(
                  height: 40,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.exit_to_app, color: Colors.green,),
                      SizedBox(width: 8,),
                      Text("Logout", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    ],
                  ),
                );

              default:
            }

            return null;
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              color: Colors.green,
            );
          },
          itemCount: 8,
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: 220,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Profile", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),
                      Text("Edit", style: TextStyle(fontSize: 16, color: Colors.white),)
                    ],
                  ),
                  _mainProfileSection(),
                  _recentOrders(),
                  _othersUserLinks(),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(234, 234, 234, 1),
    );
  }
}
