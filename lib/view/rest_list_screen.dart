import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myrest/model/restaurant.dart';
import 'package:myrest/service/data_service.dart';
import 'package:myrest/view/rest_details_screen.dart';

class RestListScreen extends StatefulWidget {
  const RestListScreen({Key? key}) : super(key: key);

  @override
  _RestListScreenState createState() => _RestListScreenState();
}

class _RestListScreenState extends State<RestListScreen> {
  late Future<List<Restaurant>> futureRestaurants;

  @override
  void initState() {
    super.initState();
    futureRestaurants = DataService().fetchRestaurants();
  }

  String _getRestaurantName(String location) {
  var parts = location.split(',');
  
  if (parts.length < 2) return parts.first; // Default to first part if not enough commas
  
  // Get the restaurant name (first part) and state (last part)
  String restaurantName = parts.first.trim();
  String state = parts[parts.length - 1].trim(); // Second last part for state
  
  return '$restaurantName, $state';
}



  List<String> _getFoodOptions(Restaurant restaurant) {
    List<String> options = [];
    if (restaurant.food == 1) options.add('Food');
    if (restaurant.dessert == 1) options.add('Dessert');
    if (restaurant.drink == 1) options.add('Drink');
    if (restaurant.pastries == 1) options.add('Pastries');
    if (restaurant.savory == 1) options.add('Savory');
    if (restaurant.sweet == 1) options.add('Sweet');
    if (restaurant.sour == 1) options.add('Sour');
    if (restaurant.spicy == 1) options.add('Spicy');
    if (restaurant.salty == 1) options.add('Salty');
    if (restaurant.bitter == 1) options.add('Bitter');
    if (restaurant.seafood == 1) options.add('Seafood');
    if (restaurant.glutenFree == 1) options.add('Gluten Free');
    if (restaurant.others == 1) options.add('Others');
    if (restaurant.casual == 1) options.add('Casual');
    if (restaurant.cafe == 1) options.add('Cafe');
    if (restaurant.fineDining == 1) options.add('Fine Dining');
    if (restaurant.pubsAndBars == 1) options.add('Pubs & Bars');
    if (restaurant.coffeeShop == 1) options.add('Coffee Shop');
    if (restaurant.dessertShop == 1) options.add('Dessert Shop');
    return options;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurants List'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: FutureBuilder<List<Restaurant>>(
        future: futureRestaurants,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print(snapshot.error);
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final restaurants = snapshot.data!;
            return ListView.builder(
              itemCount: restaurants.length,
              itemBuilder: (context, index) {
                final restaurant = restaurants[index];
                final restaurantName = _getRestaurantName(restaurant.locat);
                final foodOptions = _getFoodOptions(restaurant);

                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    leading: Container(
                      width: 100,
                      height: 100, // Adjusted height for a better layout
                      child: Image.network(
                        restaurant.picture,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      restaurantName,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cuisine: ${restaurant.cuisine}',
                          style: const TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Food Options: ${foodOptions.isNotEmpty ? foodOptions.join(', ') : "None"}',
                          style: const TextStyle(fontSize: 14),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1, // Limits the display to one line
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RestDetailsScreen(restaurant: restaurant),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
