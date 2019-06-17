import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/stores/weather_store.dart/weather_store.dart';
import 'package:portfolio/widgets/common/progress_indicator.dart';
import 'package:portfolio/widgets/weather/combined_weather_temperature.dart';
import 'package:portfolio/widgets/weather/last_updated.dart';
import 'package:portfolio/widgets/weather/location.dart';
import 'package:provider/provider.dart';

class WeatherPageMobx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _textController = TextEditingController();
    WeatherStore weatherStore = Provider.of<WeatherStore>(context);

    return Center(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width - 50,
                padding: EdgeInsets.only(left: 10.0),
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    labelText: 'City',
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  weatherStore.fetchWeather(city: _textController.text);
                },
              ),
            ],
          ),
          Observer(
            builder: (_) {
              if (weatherStore.error) {
                return Text(
                  'Something went wrong!',
                  style: TextStyle(color: Colors.red),
                );
              }
              if (weatherStore.isWeatherLoading) {
                return Center(
                  child: ProgressIndicatorCustom(),
                );
              }
              if (weatherStore.weather != null) {
                return Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 100.0),
                      child: Center(
                        child:
                            Location(location: weatherStore.weather.location),
                      ),
                    ),
                    Center(
                      child: LastUpdated(
                          dateTime: weatherStore.weather.lastUpdated),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 50.0),
                      child: Center(
                        child: CombinedWeatherTemperature(
                          weather: weatherStore.weather,
                        ),
                      ),
                    ),
                  ],
                );
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
