import 'package:flutter/material.dart';
import 'package:time_schedule/Components/Drawer/drawer.dart';
import '../Model/weather_model.dart';
import '../Api/weather_service.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: MyDrawer(),
      body: Center(
          child: FutureBuilder<Weather>(
        future: WeatherService().getWeather('Kathmandu'),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                Text(
                  snapshot.data!.location,
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  snapshot.data!.temperature.toString(),
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  snapshot.data!.description,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      )),
    );
  }
}
