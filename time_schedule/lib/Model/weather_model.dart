class Weather {
  final String location;
  final int temperature;
  final String description;

  Weather(
      {required this.location,
      required this.temperature,
      required this.description});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      location: json['location']['name'],
      temperature: json['current']['temperature'],
      description: json['current']['weather_descriptions'][0],
    );
  }
}
