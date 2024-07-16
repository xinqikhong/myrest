import 'package:flutter/material.dart';
import 'package:myrest/view/rest_list_screen.dart';

void main() => runApp(const RestaurantApp());

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurants App',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 100, 255, 229)),useMaterial3: true,),
      home: const RestListScreen(),
    );
  }
}