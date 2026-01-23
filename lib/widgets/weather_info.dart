import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({Key? key, required WeatherModel weatherModel}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   var weatherModel= BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: GoogleFonts.tajawal(
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Text('updated at 23:46', style: TextStyle(fontSize: 24)),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/cloudy.png'),
              const Text(
                '17',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              const Column(
                children: [
                  Text('Maxtemp: 24', style: TextStyle(fontSize: 16)),
                  Text('Mintemp: 16', style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 32),
          const Text(
            'Ligh Rain',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
        ],
      ),
    );
  }
}
