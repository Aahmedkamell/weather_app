import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final Dio dio;

  WeatherServices(this.dio);

  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = '88564ba1262f421eb5c163628252410';

  Future<WeatherModel?> getCurrentWeather({required String CityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$CityName&days=1',
      );
      WeatherModel weathermodel = WeatherModel.fromJson(response.data);
      return weathermodel;
    } on DioException catch (e) {
      log(e.toString());
      final String errMessage =
          e.response?.data['error']['message'] ?? 'opps there was an error';
      throw Exception(errMessage);
    }
  }
}
