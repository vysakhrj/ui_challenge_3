import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge_3/views/mobile.dart';
import 'package:ui_challenge_3/views/web.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Neo Chat",
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        backgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const Wrapper(),
    );
  }
}

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    if (width < 800) {
      return const Mobile();
    } else if (width < 1200) {
      return const Web(
        isMedium: true,
      );
    }
    return const Web(
      isMedium: false,
    );
  }
}
