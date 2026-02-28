import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetWeatherCubit(),
      child: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          final cubit = context.watch<GetWeatherCubit>();

          MaterialColor code = getWeatherColor(
            cubit.weatherModel?.weatherCondition,
          );

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primarySwatch: code),
            home: HomeView(),
          );
        },
      ),
    );
  }
}

MaterialColor getWeatherColor(String? text) {
  switch (text) {
    case 'Sunny':
      return Colors.orange;

    case 'Partly cloudy':
    case 'Cloudy':
    case 'Overcast':
      return Colors.blueGrey;

    case 'Mist':
    case 'Fog':
    case 'Freezing fog':
      return Colors.grey;

    case 'Patchy rain possible':
    case 'Patchy snow possible':
    case 'Light rain':
    case 'Moderate rain':
      return Colors.lightBlue;

    case 'Heavy rain':
    case 'Moderate or heavy rain shower':
    case 'Torrential rain shower':
      return Colors.blue;

    case 'Snow':
    case 'Blizzard':
    case 'Patchy snow':
      return Colors.cyan;

    case 'Thunderstorm':
    case 'Thunder':
      return Colors.deepPurple;

    case 'Ice pellets':
    case 'Light sleet':
    case 'Moderate or heavy sleet':
      return Colors.teal;

    default:
      return Colors.blue;
  }
}
