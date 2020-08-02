import 'package:clothing_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartItem = Provider.of<Carts>(context).cart;
    return Container(
      height: 300,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: ListView.builder(
        itemCount: cartItem.length,
        itemBuilder: (context, index) {
          return CartItemCards(index);
        },
      ),
    );
  }
}

class CartItemCards extends StatelessWidget {
  final int index;
  CartItemCards(this.index);
  @override
  Widget build(BuildContext context) {
    final cartItem = Provider.of<Carts>(context).cart;
    return Container(
      width: double.infinity,
      height: 130,
      child: Card(
        child: Row(
          children: <Widget>[
            Container(
                height: 150,
                width: 100,
                child: Image.network(
                  cartItem[index].imgUrl,
                  fit: BoxFit.cover,
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width - 160,
                  child: RichText(
                    text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                              text: cartItem[index].name,
                              style: TextStyle(fontSize: 25))
                        ]),
                    //               child: Text(
                    // "Basic T-shirt with buttons",
                    // style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width - 160,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "₹ " + cartItem[index].cost.toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        cartItem[index].size,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
