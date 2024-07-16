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
      latitude: json['latitude'].toDouble(),
      longitude: json['longitude'].toDouble(),
      food: json['food'],
      dessert: json['dessert'],
      drink: json['drink'],
      pastries: json['pastries'],
      savory: json['savory'],
      sweet: json['sweet'],
      sour: json['sour'],
      spicy: json['spicy'],
      salty: json['salty'],
      bitter: json['bitter'],
      seafood: json['seafood'],
      glutenFree: json['gluten_free'],
      others: json['others'],
      casual: json['casual'],
      cafe: json['cafe'],
      fineDining: json['fine_dining'],
      pubsAndBars: json['pubs_and_bars'],
      coffeeShop: json['coffee_shop'],
      dessertShop: json['dessert_shop'],
      cuisine: json['cuisine'],
    );
  }
}
