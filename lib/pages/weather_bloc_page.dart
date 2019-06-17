import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/bloc/weather_bloc.dart';
import 'package:portfolio/bloc/weather_event.dart';
import 'package:portfolio/bloc/weather_state.dart';
import 'package:portfolio/widgets/common/progress_indicator.dart';
import 'package:portfolio/widgets/weather/combined_weather_temperature.dart';
import 'package:portfolio/widgets/weather/last_updated.dart';
import 'package:portfolio/widgets/weather/location.dart';

class WeatherPageBloc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final weatherBloc = BlocProvider.of<WeatherBloc>(context);
    final TextEditingController _textController = TextEditingController();

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
                  weatherBloc.dispatch(
                    FetchWeather(
                      city: _textController.text,
                    ),
                  );
                },
              ),
            ],
          ),
          BlocBuilder(
            bloc: weatherBloc,
            builder: (_, WeatherState state) {
              if (state is WeatherEmpty) {
                return Container();
              }
              if (state is WeatherLoading) {
                return Center(
                  child: ProgressIndicatorCustom(),
                );
              }
              if (state is WeatherLoaded) {
                final weather = state.weather;

                return Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 100.0),
                      child: Center(
                        child: Location(location: weather.location),
                      ),
                    ),
                    Center(
                      child: LastUpdated(dateTime: weather.lastUpdated),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 50.0),
                      child: Center(
                        child: CombinedWeatherTemperature(
                          weather: weather,
                        ),
                      ),
                    ),
                  ],
                );
              }
              if (state is WeatherError) {
                return Text(
                  'Something went wrong!',
                  style: TextStyle(color: Colors.red),
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
