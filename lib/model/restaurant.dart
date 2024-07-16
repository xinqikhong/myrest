class Restaurant {
  final String picture;
  final String locat;
  final double latitude;
  final double longitude;
  final int food;
  final int dessert;
  final int drink;
  final int pastries;
  final int savory;
  final int sweet;
  final int sour;
  final int spicy;
  final int salty;
  final int bitter;
  final int seafood;
  final int glutenFree;
  final int others;
  final int casual;
  final int cafe;
  final int fineDining;
  final int pubsAndBars;
  final int coffeeShop;
  final int dessertShop;
  final String cuisine;

  Restaurant({
    required this.picture,
    required this.locat,
    required this.latitude,
    required this.longitude,
    required this.food,
    required this.dessert,
    required this.drink,
    required this.pastries,
    required this.savory,
    required this.sweet,
    required this.sour,
    required this.spicy,
    required this.salty,
    required this.bitter,
    required this.seafood,
    required this.glutenFree,
    required this.others,
    required this.casual,
    required this.cafe,
    required this.fineDining,
    required this.pubsAndBars,
    required this.coffeeShop,
    required this.dessertShop,
    required this.cuisine,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      picture: json['picture'],
      locat: json['locat'],
      latitude: double.parse(json['latitude']),
      longitude: double.parse(json['longitude']),
      food: int.parse(json['food']),
      dessert: int.parse(json['dessert']),
      drink: int.parse(json['drink']),
      pastries: int.parse(json['pastries']),
      savory: int.parse(json['savory']),
      sweet: int.parse(json['sweet']),
      sour: int.parse(json['sour']),
      spicy: int.parse(json['spicy']),
      salty: int.parse(json['salty']),
      bitter: int.parse(json['bitter']),
      seafood: int.parse(json['seafood']),
      glutenFree: int.parse(json['gluten_free']),
      others: int.parse(json['others']),
      casual: int.parse(json['casual']),
      cafe: int.parse(json['cafe']),
      fineDining: int.parse(json['fine_dining']),
      pubsAndBars: int.parse(json['pubs_and_bars']),
      coffeeShop: int.parse(json['coffee_shop']),
      dessertShop: int.parse(json['dessert_shop']),
      cuisine: json['cuisine'],
    );
  }
}
