import 'package:flutter/material.dart';

class MenuItemScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MenuItemScreenState();
}

class _MenuItemScreenState extends State<MenuItemScreen> {

  Widget _menuItemsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10, top: 20),
          child: Text("Recommended", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
        ),
        GridView.count(
          childAspectRatio: .75,
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 25,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(3, (index) {
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
                      height: 130,
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
                        Text("Italian", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),),
                        SizedBox(height: 7,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("\$10", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            Container(
                              width: 60,
                              height: 30,
                              child: OutlineButton(
                                child: new Text("Add", style: TextStyle(color: Colors.green),),
                                onPressed: () {
                                  print("Add me");
                                },
                                borderSide: BorderSide(
                                  color: Colors.green
                                ),
                                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                              ),
                            ),
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
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 40),
              child: GestureDetector(
                onTap: () {
                  print("close");
                  Navigator.of(context).pop();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Icon(Icons.close, size: 40,)
                  ],
                ),
              ),
            ),
            _menuItemsList(),
            _menuItemsList(),
            _menuItemsList()
          ],
        ),
      ),
    );
  }
}
