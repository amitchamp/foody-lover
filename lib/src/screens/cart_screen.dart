import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  Widget _cartSummary() {
    return Container(
      height: 160,
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Subtotal", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              Text("\$150.00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey),),
            ],
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Tax & Fees", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              Text("\$5.00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey),),
            ],
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Delivery", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              Text("Free", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey),),
            ],
          ),
          SizedBox(height: 8,),
          Divider(
            color: Colors.green,
            thickness: 2,
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Total", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text("\$155.00", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0
          ),
        ],
      ),
    );
  }

  Widget _cartSummaryDetail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        padding: EdgeInsets.zero,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.green,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 88,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage("assets/images/pizza_1.jpg"),
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Crispy pizza", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("Pizza hut", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Text("\$20", style: TextStyle(fontSize: 15),),
                        SizedBox(width: 90,),
                        Container(
                          height: 22,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("-", style: TextStyle(fontSize: 16,),),
                              SizedBox(width: 5,),
                              Text(" 2 ", style: TextStyle(fontSize: 14,),),
                              SizedBox(width: 5,),
                              Text("+", style: TextStyle(fontSize: 16,),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    ) ;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                      children: <Widget>[
                        Text("Cart", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),
                      ],
                    ),
                    _cartSummary(),
                    _cartSummaryDetail(),
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: Text("Checkout", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(234, 234, 234, 1),
    );
  }
}
