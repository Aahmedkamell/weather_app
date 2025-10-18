import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoWeather extends StatelessWidget {
  const NoWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 16),
    
    child: Center(
      child: Column(

         mainAxisSize: MainAxisSize.min,
          children: [
            Text('No weather data available 🌧️😞', style: GoogleFonts.tajawal(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),),
             Text(' Search Now 🔍', style: GoogleFonts.tajawal(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.blueAccent,
            ),)
          ]
      ),
    ),
    );
  }
}

  