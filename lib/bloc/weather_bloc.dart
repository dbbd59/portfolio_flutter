import 'package:bloc/bloc.dart';
import 'package:portfolio/Apis/api.dart';
import 'package:portfolio/bloc/weather_event.dart';
import 'package:portfolio/bloc/weather_state.dart';
import 'package:portfolio/models/weather.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc({Api api}) : _api = api;

  final Api _api;

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is FetchWeather) {
      yield WeatherLoading();
      try {
        final Weather weather = await _api.getWeather(
          city: event.city,
        );
        yield WeatherLoaded(weather: weather);
      } catch (_) {
        yield WeatherError();
      }
    }
  }

  @override
  WeatherState get initialState => WeatherEmpty();
}
