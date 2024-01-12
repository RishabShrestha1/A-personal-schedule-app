import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:time_schedule/Api/constant.dart';
import '../Model/weather_model.dart';

class WeatherService {
  Future<Weather> getWeather(String city) async {
    String url =
        "${ApiConstants().basbeUrl}current?access_key=${ApiConstants().apiKey}&query=$city";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return Weather.fromJson(data);
    } else {
      throw Exception('Failed to load weather');
    }
  }
}
