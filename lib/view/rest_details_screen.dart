import 'package:flutter/material.dart';
import 'package:myrest/model/restaurant.dart';

class RestDetailsScreen extends StatelessWidget {
  final Restaurant restaurant;

  const RestDetailsScreen({Key? key, required this.restaurant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_getFormattedTitle(restaurant.locat)),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Image.network(
                    restaurant.picture,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Location',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                restaurant.locat,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              const Text(
                'Coordinates',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text('Latitude: ${restaurant.latitude}', style: const TextStyle(fontSize: 16),),
              Text('Longitude: ${restaurant.longitude}', style: const TextStyle(fontSize: 16),),
              const SizedBox(height: 16),
              const Text(
                'Food Options',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ..._buildFoodOptions(),
              const SizedBox(height: 16),
              const Text(
                'Cuisine',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                restaurant.cuisine,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildFoodOptions() {
    List<Widget> foodOptions = [];
    if (restaurant.food == 1) foodOptions.add(_buildFoodOption('Food'));
    if (restaurant.dessert == 1) foodOptions.add(_buildFoodOption('Dessert'));
    if (restaurant.drink == 1) foodOptions.add(_buildFoodOption('Drink'));
    if (restaurant.pastries == 1) foodOptions.add(_buildFoodOption('Pastries'));
    if (restaurant.savory == 1) foodOptions.add(_buildFoodOption('Savory'));
    if (restaurant.sweet == 1) foodOptions.add(_buildFoodOption('Sweet'));
    if (restaurant.sour == 1) foodOptions.add(_buildFoodOption('Sour'));
    if (restaurant.spicy == 1) foodOptions.add(_buildFoodOption('Spicy'));
    if (restaurant.salty == 1) foodOptions.add(_buildFoodOption('Salty'));
    if (restaurant.bitter == 1) foodOptions.add(_buildFoodOption('Bitter'));
    if (restaurant.seafood == 1) foodOptions.add(_buildFoodOption('Seafood'));
    if (restaurant.glutenFree == 1) foodOptions.add(_buildFoodOption('Gluten Free'));
    if (restaurant.others == 1) foodOptions.add(_buildFoodOption('Others'));
    if (restaurant.casual == 1) foodOptions.add(_buildFoodOption('Casual'));
    if (restaurant.cafe == 1) foodOptions.add(_buildFoodOption('Cafe'));
    if (restaurant.fineDining == 1) foodOptions.add(_buildFoodOption('Fine Dining'));
    if (restaurant.pubsAndBars == 1) foodOptions.add(_buildFoodOption('Pubs and Bars'));
    if (restaurant.coffeeShop == 1) foodOptions.add(_buildFoodOption('Coffee Shop'));
    if (restaurant.dessertShop == 1) foodOptions.add(_buildFoodOption('Dessert Shop'));

    // Debugging: Check if foodOptions is empty
    if (foodOptions.isEmpty) {
      foodOptions.add(const Text('No food options available.', style: TextStyle(fontStyle: FontStyle.italic)));
    }

    return foodOptions;
  }

  Widget _buildFoodOption(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            '$title ',
            style: const TextStyle(fontSize: 16),
          ),
          /*const Text(
            'Yes',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),*/
        ],
      ),
    );
  }
  
  String _getFormattedTitle(String location) {
    return location.split(',').first; // Get the part before the first comma
  }
}
