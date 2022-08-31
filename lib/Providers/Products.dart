import 'package:flutter/cupertino.dart';

import '../models/product.dart';
import 'package:provider/provider.dart';

class Products with ChangeNotifier {
  List<Product> _item = [
    Product(
        ProductImage: Image(image: AssetImage("images/image1.png")),
        ProductName: "Pot de fleurs",
        ProductPrice: "3.50"),
    Product(
        ProductImage: Image(image: AssetImage("images/pngwing2.png")),
        ProductName: "ski Boots",
        ProductPrice: "12.60"),
    Product(
        ProductImage: Image(image: AssetImage("images/pngwing3.png")),
        ProductName: "Predictor mouse",
        ProductPrice: "10.0"),
    Product(
        ProductImage: Image(image: AssetImage("images/casquette.png")),
        ProductName: "Casquette",
        ProductPrice: "4.45"),
  ];
  List<Product> get item {
    return [..._item];
  }

  addProduct(Product newProduct) {
    notifyListeners();
    _item.add(newProduct);
  }
}
