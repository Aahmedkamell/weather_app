import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfo extends StatelessWidget {
  WeatherInfo({
    Key? key,
    required WeatherModel weatherModel,
    required this.weather,
  }) : super(key: key);
  final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    if (weatherModel == null) {
      return const Center(child: CircularProgressIndicator());
    }
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            getWeatherColor(weatherModel.weatherCondition ),
            getWeatherColor(weatherModel.weatherCondition )[300]!,
            getWeatherColor(weatherModel.weatherCondition )[50]!,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherModel.cityName!,
              style: GoogleFonts.tajawal(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network("https:${weatherModel.image}"),
                Text(
                  '${weatherModel.temp.round()}°',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
                Column(
                  children: [
                    Text(
                      'Maxtemp: ${weatherModel.maxTemp.round()}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Mintemp: ${weatherModel.minTemp.round()}',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            Text(
              weatherModel.weatherCondition!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
