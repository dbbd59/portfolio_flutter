// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$WeatherStore on _WeatherStore, Store {
  final _$weatherAtom = Atom(name: '_WeatherStore.weather');

  @override
  Weather get weather {
    _$weatherAtom.reportObserved();
    return super.weather;
  }

  @override
  set weather(Weather value) {
    _$weatherAtom.context.checkIfStateModificationsAreAllowed(_$weatherAtom);
    super.weather = value;
    _$weatherAtom.reportChanged();
  }

  final _$isWeatherLoadingAtom = Atom(name: '_WeatherStore.isWeatherLoading');

  @override
  bool get isWeatherLoading {
    _$isWeatherLoadingAtom.reportObserved();
    return super.isWeatherLoading;
  }

  @override
  set isWeatherLoading(bool value) {
    _$isWeatherLoadingAtom.context
        .checkIfStateModificationsAreAllowed(_$isWeatherLoadingAtom);
    super.isWeatherLoading = value;
    _$isWeatherLoadingAtom.reportChanged();
  }

  final _$errorAtom = Atom(name: '_WeatherStore.error');

  @override
  bool get error {
    _$errorAtom.reportObserved();
    return super.error;
  }

  @override
  set error(bool value) {
    _$errorAtom.context.checkIfStateModificationsAreAllowed(_$errorAtom);
    super.error = value;
    _$errorAtom.reportChanged();
  }

  final _$fetchWeatherAsyncAction = AsyncAction('fetchWeather');

  @override
  Future<void> fetchWeather({String city}) {
    return _$fetchWeatherAsyncAction.run(() => super.fetchWeather(city: city));
  }
}
