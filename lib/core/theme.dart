import 'package:flutter/material.dart';

const Color _lightDefaultBackgroundColor = Colors.white;
const Color _lightDefaultSecundaryColor = Colors.grey;
const Color _lightDefaultContrastColor = Color.fromRGBO(11, 137, 254, 1);
const Color _defaultBackLogTaskCardColor = Color(0xFFE7EDFC);

class MainTheme {
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: _lightDefaultBackgroundColor,
      appBarTheme: _lightAppBarTheme(),
      colorScheme: _lightColorSchemes(),
      textTheme: _lightTextTheme(),
      buttonTheme: const ButtonThemeData(buttonColor: _lightDefaultContrastColor),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: _lightDefaultContrastColor));

  static _lightColorSchemes() {
    return const ColorScheme.light(
      primary: _lightDefaultSecundaryColor,
      secondary: _lightDefaultSecundaryColor,
      tertiary: _lightDefaultContrastColor,
      background: _lightDefaultBackgroundColor,
      tertiaryContainer: _defaultBackLogTaskCardColor
    );
  }

  static _lightAppBarTheme() {
    return const AppBarTheme(
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 26, color: Colors.black, fontWeight: FontWeight.w400),
        backgroundColor: _lightDefaultBackgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: _lightDefaultContrastColor),
        actionsIconTheme: IconThemeData(color: _lightDefaultContrastColor));
  }

  static _lightTextTheme() {
    return const TextTheme(
      headline1: TextStyle(
          fontFamily: 'Mulish-ExtraBold',
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold),

      headline2: TextStyle(
          fontFamily: 'Mulish-Bold',
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold),

      headline3: TextStyle(
          fontFamily: 'Mulish-Regular',
          fontSize: 14,
          color: Color.fromRGBO(78, 74, 74, 1),
          fontWeight: FontWeight.w400),

      headline4: TextStyle(
          fontFamily: 'Mulish-SemiBold',
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w500),
      
       headline5: TextStyle(
          fontFamily: 'Mulish-Regular',
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w400),

      subtitle2: TextStyle(
          fontFamily: "Mulish",
          color: Colors.white,
          fontSize: 14
      )
    );
  }
}
