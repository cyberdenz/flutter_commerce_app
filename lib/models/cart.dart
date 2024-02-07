import 'package:flutter/foundation.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //
  List<Shoe> shoeshop = [
    Shoe(
      name: 'Air Jordan 3 Retro',
      price: '200',
      imagePath: 'lib/images/air-jordan-3-retro-shoes-TJf2lm.png',
      description: 'Clean and supreme, the AJ3',
    ),
    Shoe(
      name: 'Air Max Dn',
      price: '160',
      imagePath: 'lib/images/air-max-dn-shoes-FtLNfm.png',
      description: 'The next gen Air technology',
    ),
    Shoe(
      name: 'Air Max Excee',
      price: '95',
      imagePath: 'lib/images/air-max-excee-shoes-BND2jb.png',
      description: 'Get into the groove',
    ),
    Shoe(
      name: 'Dunk Low Retro',
      price: '115',
      imagePath: 'lib/images/dunk-low-retro-shoes-bCzchX.png',
      description: "Recognising the Dunk's roots",
    ),
  ];

  // List of item in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeshop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

}
