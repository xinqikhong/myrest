import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myrest/model/restaurant.dart';

class DataService {
  final String apiUrl =
      'https://xqksoft.com/myrest/php/get_rest.php'; // Update this

  Future<List<Restaurant>> fetchRestaurants() async {
    final response = await http.get(Uri.parse(apiUrl));

    print(response.statusCode);
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Restaurant.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load restaurants');
    }
  }
}
