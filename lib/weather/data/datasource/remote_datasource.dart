import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather/core/utils/constances.dart';
import 'package:weather/weather/data/models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCuntryName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCuntryName(String cityName) async {
    try {
      var response = await Dio().get(
          '${AppConstance.baseUrl}/weather?q=$cityName&APPID=${AppConstance.apiKey}');

      print(response);

      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
