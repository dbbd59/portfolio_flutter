import 'package:mobx/mobx.dart';
import 'package:portfolio/Apis/api.dart';
import 'package:portfolio/models/weather.dart';

part 'weather_store.g.dart';

class WeatherStore = _WeatherStore with _$WeatherStore;

abstract class _WeatherStore with Store {
  final Api _api;

  _WeatherStore({Api api}) : _api = api;

  @observable
  Weather weather;

  @observable
  bool isWeatherLoading = false;

  @observable
  bool error = false;

  @action
  Future<void> fetchWeather({String city}) async {
    try {
      isWeatherLoading = true;
      error = false;
      print("FetchWeatherMOBX");
      weather = await _api.getWeather(
        city: city,
      );
      isWeatherLoading = false;
    } catch (_) {
      isWeatherLoading = false;
      error = true;
    }
  }
}
