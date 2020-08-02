import 'package:flutter/widgets.dart';

class Cart {
  final String name;
  final double cost;
  final String size;
  final String imgUrl;
  Cart({this.name, this.cost, this.size, this.imgUrl});
}

class Carts with ChangeNotifier {
  List<Cart> _carts = [
    Cart(
        name: "Casual Sky Blue Shirt with black strip",
        cost: 1699,
        size: "xl",
        imgUrl:
            "https://images.pexels.com/photos/1254502/pexels-photo-1254502.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
    Cart(
        name: "Basic Yellow T-shit ",
        cost: 899,
        size: "xl",
        imgUrl:
            "https://images.pexels.com/photos/1018911/pexels-photo-1018911.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
  ];

  List<Cart> get cart {
    return [..._carts];
  }

  total() {
    var total = 0.0;
    _carts.forEach((element) => total += element.cost);
    return total;
  }
}
