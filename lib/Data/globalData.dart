import 'package:food_app/Data/restaurant.dart';

List<Restaurant> restaurants = [
  Restaurant(
      name: "McDonald's",
      rating: "9.2/10",
      deliveryTime: "10-20 min",
      picture: "mcdonald",
      type: RestaurantType.withTypeName(typeName: 'Fast Food')
  ),

  Restaurant(
      name: "KFC",
      rating: "9.0/10",
      deliveryTime: "25-35 min",
      picture: "kfc",
      type: RestaurantType.withTypeName(typeName: 'Fast Food')
  ),

  Restaurant(
      name: "Papa Jonas",
      rating: "8.4/10",
      deliveryTime: "20-30 min",
      picture: "papaJonas",
      type: RestaurantType.withTypeName(typeName: 'Pizza')
  ),

  Restaurant(
      name: "Fryday",
      rating: "9.2/10",
      deliveryTime: "20-30 min",
      picture: "fryday",
      type: RestaurantType.withTypeName(typeName: 'Burger')
  ),

  Restaurant(
      name: "BIR-IKI-DONER",
      rating: "9.2/10", 
      deliveryTime: "15-25 min",
      picture: "doner",
      type: RestaurantType.withTypeName(typeName: 'Doner')
  ),

  Restaurant(
      name: "CafeCity",
      rating: "9./10",
      deliveryTime: "25-35 min",
      picture: "cafecity",
      type: RestaurantType.withTypeName(typeName: 'Traditional foods')
  ),
];

List<RestaurantType> restaurantTypes = [
  RestaurantType(typeName: "Pizza", typePicture: "pizza"),
  RestaurantType(typeName: "Burger", typePicture: "burger"),
  RestaurantType(typeName: "Salad", typePicture: "salad"),
  RestaurantType(typeName: "Traditional", typePicture: "traditional"),
  RestaurantType(typeName: "Dessert", typePicture: "dessert"),
];
