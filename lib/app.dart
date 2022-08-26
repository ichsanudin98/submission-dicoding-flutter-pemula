import 'package:flutter/material.dart';
import 'package:submission/colors.dart';
import 'package:submission/detail.dart';
import 'package:submission/home.dart';

import 'package:submission/login.dart';
import 'package:submission/register.dart';
import 'package:submission/supplemental/cut_corners_border.dart';

class App extends StatelessWidget {
  const App({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Submission App',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        '/register': (BuildContext context) => const RegisterPage(),
        '/': (BuildContext context) => const HomePage(),
      },
      theme: _theme,
    );
  }
}

final ThemeData _theme = _buildTheme();
ThemeData _buildTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kGreen300,
      secondary: kGreen300,
      error: kErrorRed
    ),
    scaffoldBackgroundColor: kSurfaceWhite,
    textTheme: _buildTextTheme(base.textTheme),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: kGreen400
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: CutCornersBorder(),
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: kGreen300
        )
      ),
    )
  );
}

TextTheme _buildTextTheme(TextTheme base) {
  return  base.copyWith(
      headline5: base.headline5!.copyWith(
        fontWeight: FontWeight.w500,
      )
  ).apply(
    fontFamily: 'Rubik',
    displayColor: kGreen300,
    bodyColor: kGreen300
  );
}