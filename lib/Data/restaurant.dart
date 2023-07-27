class Restaurant{

  String name;
  String rating;
  String deliveryTime;
  String picture;
  RestaurantType type;
  
  
  Restaurant({
    required this.name,
    required this.rating,
    required this.deliveryTime,
    required this.picture,
    required this.type
  });

}


class RestaurantType{

  String typeName;
  String? typePicture;

  RestaurantType({
    required this.typeName,
    required this.typePicture
  });
  
  RestaurantType.withTypeName({
    required this.typeName,    
  });
  
}