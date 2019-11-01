import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:portfolio/models/weather.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherEmpty extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  WeatherLoaded({@required this.weather}) : assert(weather != null);

  final Weather weather;
}

class WeatherError extends WeatherState {}
