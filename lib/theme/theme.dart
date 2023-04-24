import 'package:flutter/material.dart';

ThemeData get theme => ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.pink,
        secondary: Colors.amber,
      ),
      canvasColor: const Color.fromRGBO(255, 254, 229, 1),
      fontFamily: 'RobotoCondensedRaleway',
      textTheme: ThemeData.light().textTheme.copyWith(
            bodyLarge: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyMedium: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            titleLarge: const TextStyle(
              fontSize: 20,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
            ),
          ),
    );
