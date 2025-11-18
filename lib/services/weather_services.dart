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

      final weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on Exception catch (e) {
      return null;
      // TODO
    }
  }
}
