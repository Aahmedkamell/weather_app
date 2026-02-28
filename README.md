🌤 Weather App

A simple and clean Weather Application built with Flutter & Dart.
The app fetches real-time weather data using a REST API and displays weather conditions dynamically with theme-based colors.

📱 Overview

Weather App allows users to search for any city and get:

Current temperature 🌡

Weather condition 🌥

Location name 📍

Dynamic theme color based on weather condition 🎨

The project was built to practice:

API Integration using Dio

State Management using Cubit (flutter_bloc)

Clean Architecture principles

Error handling and loading states

🚀 Features

🔍 Search weather by city name

🌍 Real-time data from Weather API

🎨 Dynamic UI color based on weather condition code

⚡ Fast and responsive UI

🧠 State management using Cubit

❌ Error handling for invalid city names

🔄 Loading indicator while fetching data

🏗 App Architecture

The project follows a simple clean structure:

lib/
│
├── models/
│   └── weather_model.dart
│
├── services/
│   └── weather_services.dart
│
├── cubit/
│   ├── weather_cubit.dart
│   └── weather_state.dart
│
├── views/
│   ├── home_page.dart
│   └── search_page.dart
│
└── main.dart
🧠 State Management

The app uses Cubit from flutter_bloc.

Flow:

User searches for a city

Cubit calls WeatherServices

API request is sent

State changes:

WeatherInitialState

WeatherLoadingState

WeatherLoadedState

WeatherFailureState

UI rebuilds based on the emitted state

🌐 API Used

Weather data provided by: WeatherAPI

HTTP client: Dio

📦 Dependencies
dependencies:
  flutter:
    sdk: flutter
  dio: ^5.x.x
  flutter_bloc: ^9.x.x
🛠 How to Run

Clone the repository:

git clone https://github.com/your-username/weather_app.git

Navigate to the project folder:

cd weather_app

Get packages:

flutter pub get

Run the app:

flutter run
📸 Screenshots

Add your screenshots here

assets/screenshots/home.png
assets/screenshots/search.png
🎯 What I Learned

How to integrate REST APIs in Flutter

How Cubit simplifies state management

Difference between UI layer & business logic

Handling asynchronous operations

Managing dynamic themes in Flutter

👨‍💻 Author

Developed by Ahmed

⭐ If you like this project

Give it a star on GitHub ⭐