import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale

  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '500',
      description: 'The forward thinking design of his latest signature shoe',
      imagePath: 'assets/pngwing.com (1).png',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '800',
      description: 'You have got the hops and speed lace ui in this shoes',
      imagePath: 'assets/pngwing.com (2).png',
    ),
    Shoe(
      name: 'Puma',
      price: '240',
      description: 'You have got the hops and speed lace ui in this shoes',
      imagePath: 'assets/pngwing.com (5).png',
    ),
    Shoe(
      name: 'KD Treys',
      price: '799',
      description: 'You have got the hops and speed lace ui in this shoes',
      imagePath: 'assets/pngwing.com (3).png',
    ),
  ];

  //list of item in cart

  List<Shoe> userCart = [];

  //get list of shoes for sale

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // cart

  List<Shoe> getUserCart() {
    return userCart;
  }

  //add item to cart

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item

  void removeItemCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
