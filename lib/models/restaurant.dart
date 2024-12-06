import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:intl/intl.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
        name: "Classic Cheeseburger",
        description:
            "A juicy chicken patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
        imagePath: "assets/images/burgers/cheese_burger.png",
        price: 120,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 10),
          Addon(name: "Bacon", price: 50),
          Addon(name: "Avocado", price: 40),
        ]),
    Food(
        name: "Aloha Burger",
        description:
            "A juicy chicken patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
        imagePath: "assets/images/burgers/aloha_burger.png",
        price: 120,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 10),
          Addon(name: "Bacon", price: 50),
          Addon(name: "Avocado", price: 40),
        ]),
    Food(
        name: "Barbeque Burger",
        description:
            "A juicy chicken patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
        imagePath: "assets/images/burgers/bbq_burger.png",
        price: 120,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 10),
          Addon(name: "Bacon", price: 50),
          Addon(name: "Avocado", price: 40),
        ]),
    Food(
        name: "Bluemoon Burger",
        description:
            "A juicy chicken patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
        imagePath: "assets/images/burgers/bluemoon_burger.png",
        price: 120,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 10),
          Addon(name: "Bacon", price: 50),
          Addon(name: "Avocado", price: 40),
        ]),
    Food(
        name: "Veg Burger",
        description:
            "A juicy potato patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle",
        imagePath: "assets/images/burgers/veg_burger.png",
        price: 120,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 10),
          Addon(name: "Bacon", price: 50),
          Addon(name: "Avocado", price: 40),
        ]),

    // salads
    Food(
        name: "Caesar Salad",
        description:
            " Crisp romaine lettuce, parmesan cheese, croutons, and caesar dressing.",
        imagePath: "assets/images/salads/Caesar_salad.png",
        price: 120,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Grilled Chicken", price: 10),
          Addon(name: "Anchovies", price: 50),
          Addon(name: "Extra Parmesan", price: 40),
        ]),
    Food(
        name: "Greek Salad",
        description:
            " Tomatoes, cucumbers, red onions, olives, feta cheese with olive oil and herbs.",
        imagePath: "assets/images/salads/greek_salad.png",
        price: 120,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Feta Cheese", price: 10),
          Addon(name: "Kalamata Olives", price: 50),
          Addon(name: "Grilled Shrimp", price: 40),
        ]),
    Food(
        name: "Quinoa Salad",
        description:
            "Quinoa mixed with cucumbers, tomatoes, bell peppers, and a lemon vinaigrette.",
        imagePath: "assets/images/salads/quinoa_salad.png",
        price: 120,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Avocado", price: 10),
          Addon(name: "Feta Cheese", price: 50),
          Addon(name: "Grilled Chicken", price: 40),
        ]),
    Food(
        name: "Asian Sesame Salad",
        description:
            "Delight in the flavors of the East with this sesame-infused salad.",
        imagePath: "assets/images/salads/asiansesame_salad.png",
        price: 120,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Mandarin Oranges", price: 10),
          Addon(name: "Almond Slivers", price: 50),
          Addon(name: "Extra Teriyaki Chicken", price: 40),
        ]),
    Food(
        name: "South West Chicken Salad",
        description:
            "The colourful salad combines the zesty flavors of the southwest.",
        imagePath: "assets/images/salads/southwest_salad.png",
        price: 120,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Sour Cream", price: 10),
          Addon(name: "Pico de Gallo", price: 50),
          Addon(name: "Guacamole", price: 40),
        ]),

    // sides
    Food(
        name: "Onion Rings",
        description: "Golden and crispy onion rings, perfect for dipping",
        imagePath: "assets/images/sides/onion_rings_side.png",
        price: 120,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Ranch Dip", price: 10),
          Addon(name: "Spicy Mayo", price: 50),
          Addon(name: "Parmesan Dust", price: 40),
        ]),
    Food(
        name: "Garlic Bread",
        description:
            "Warm and toasty garlic bread, topped with melted butter and parsley.",
        imagePath: "assets/images/sides/garlic_bread_side.png",
        price: 120,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Ranch Dip", price: 10),
          Addon(name: "Spicy Mayo", price: 50),
          Addon(name: "Parmesan Dust", price: 40),
        ]),
    Food(
        name: "Sweet Potato Fries",
        description: "Crispy sweet potato fries with a touch of salt",
        imagePath: "assets/images/sides/sweet_potato_side.png",
        price: 120,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Cheese Sauce", price: 10),
          Addon(name: "Truffle Oil", price: 50),
          Addon(name: "Cajun Spice", price: 40),
        ]),
    Food(
        name: "Loaded Fries",
        description:
            "Golden and crispy fries loaded with melted cheese, smoky bacon bits.",
        imagePath: "assets/images/sides/loadedfries_side.png",
        price: 120,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Ranch Dip", price: 10),
          Addon(name: "Spicy Mayo", price: 50),
          Addon(name: "Parmesan Dust", price: 40),
        ]),
    Food(
        name: "Mac & Cheese",
        description:
            "Golden brown, mac and cheese perfect for on-the-go snacking.",
        imagePath: "assets/images/sides/mac_side.png",
        price: 120,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Ranch Dip", price: 10),
          Addon(name: "Spicy Mayo", price: 50),
          Addon(name: "Parmesan Dust", price: 40),
        ]),

    // deserts
    Food(
        name: "Chocolate Brownie",
        description:
            "Rich and fudgy chocolate brownie, with chunks of chocolate.",
        imagePath: "assets/images/deserts/brownie_dessert.png",
        price: 120,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Vanilla Ice Cream", price: 10),
          Addon(name: "Hot Fudge", price: 50),
          Addon(name: "Whipped Cream", price: 40),
        ]),
    Food(
        name: "Cheese cake",
        description:
            "Rich and fudgy chocolate brownie, with chunks of chocolate.",
        imagePath: "assets/images/deserts/cheesecake_dessert.png",
        price: 120,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Vanilla Ice Cream", price: 10),
          Addon(name: "Hot Fudge", price: 50),
          Addon(name: "Whipped Cream", price: 40),
        ]),
    Food(
        name: "Apple Pie",
        description:
            "Rich and fudgy chocolate brownie, with chunks of chocolate.",
        imagePath: "assets/images/deserts/apple_pie_dessert.png",
        price: 120,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Vanilla Ice Cream", price: 10),
          Addon(name: "Hot Fudge", price: 50),
          Addon(name: "Whipped Cream", price: 40),
        ]),
    Food(
        name: "Choco Lava",
        description:
            "Rich and fudgy chocolate brownie, with chunks of chocolate.",
        imagePath: "assets/images/deserts/chocolava_dessert.png",
        price: 120,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Vanilla Ice Cream", price: 10),
          Addon(name: "Hot Fudge", price: 50),
          Addon(name: "Whipped Cream", price: 40),
        ]),
    Food(
        name: "Red Velvet",
        description:
            "Rich and fudgy chocolate brownie, with chunks of chocolate.",
        imagePath: "assets/images/deserts/redvelvet_dessert.png",
        price: 120,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Vanilla Ice Cream", price: 10),
          Addon(name: "Hot Fudge", price: 50),
          Addon(name: "Whipped Cream", price: 40),
        ]),

    // drinks
    Food(
        name: "Lemonade",
        description:
            "Refreshing lemonade made with real lemons and a touch of sweetness",
        imagePath: "assets/images/drinks/lemonade_drink.png",
        price: 120,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Strawberry Flavor", price: 10),
          Addon(name: "Mint Leaves", price: 50),
          Addon(name: "Ginger Test", price: 40),
        ]),
    Food(
        name: "Iced Tea",
        description: "Chilled iced tea with a hint of lemon, served over ice.",
        imagePath: "assets/images/drinks/ice_tea_drink.png",
        price: 120,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Peach Flavor", price: 10),
          Addon(name: "Lemon Slices", price: 50),
          Addon(name: "Honey", price: 40),
        ]),
    Food(
        name: "Smoothie",
        description:
            "A blend of fresh fruits and yogurt, perfect for a healthy boost.",
        imagePath: "assets/images/drinks/smoothie.png",
        price: 120,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Strawberry Flavor", price: 10),
          Addon(name: "Mint Leaves", price: 50),
          Addon(name: "Ginger Test", price: 40),
        ]),
    Food(
        name: "Mojito",
        description:
            "A classic Cuban cocktail with muddled line and mint, sweetened with sugar.",
        imagePath: "assets/images/drinks/mojito.png",
        price: 120,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Strawberry Flavor", price: 10),
          Addon(name: "Mint Leaves", price: 50),
          Addon(name: "Ginger Test", price: 40),
        ]),
    Food(
        name: "Caramel Macchiato",
        description: "Chilled iced tea with a hint of lemon, served over ice.",
        imagePath: "assets/images/drinks/caramel_drink.png",
        price: 120,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Strawberry Flavor", price: 10),
          Addon(name: "Mint Leaves", price: 50),
          Addon(name: "Ginger Test", price: 40),
        ]),
  ];

  // user  cart
  final List<CartItem> _cart = [];

  // delivery address which user can change/update
  String _deliveryAddress = 'Bhubaneswar';

  /*
  Getters
  */
  List<Food> get menu => _menu;

  List<CartItem> get cart => _cart;

  String get deliveryAddress => _deliveryAddress;

  /*
  O P E R A T I O N S
  */

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    // if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    // otherwise, add a new cart item
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal + cartItem.quantity;
    }

    return total;
  }

  // get total no of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  /*
  H E L P E R S
  */

// generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln('Here\'s your receipt.');
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln('__________');

    for (final cartItem in _cart) {
      receipt.writeln(
          '${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}');
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln('Add-ons: ${_formatAddons(cartItem.selectedAddons)}');
      }
      receipt.writeln();
    }
    receipt.writeln('__________');
    receipt.writeln();
    receipt.writeln('Total Items: ${getTotalItemCount()}');
    receipt.writeln('Total Price: ${_formatPrice(getTotalPrice())}');
    receipt.writeln();
    receipt.writeln('Delivering to: $deliveryAddress');

    return receipt.toString();
  }

// format double value into money
  String _formatPrice(double price) {
    return '₹${price.toStringAsFixed(2)}';
  }

//format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(',');
  }
}
