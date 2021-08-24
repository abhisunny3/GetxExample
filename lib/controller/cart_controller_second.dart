import 'package:get/state_manager.dart';
import 'package:getx_example/model/product.dart';

class CartControllerSecond extends GetxController {
  var cartItems = List<Product>().obs;
  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);

  var testAmount = 0.0;

  addToCart(Product product) {
    cartItems.add(product);
    testAmount = totalPrice;
    update();
  }
}
