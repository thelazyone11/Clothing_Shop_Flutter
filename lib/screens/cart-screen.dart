import 'package:clothing_app/widgets/cart_list.dart';
import 'package:flutter/material.dart';
import '../models/cart.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartTotal = Provider.of<Carts>(context).total();
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Shop.",
                  style: TextStyle(fontSize: 30),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Cart 2",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.menu)
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 30),
            width: double.infinity,
            child: Text(
              "My Order",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          CartItems(),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Total",
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  "₹ " + cartTotal.toString(),
                  style: TextStyle(fontSize: 50),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.black,
              child: Center(
                child: Text(
                  "Checkout",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
