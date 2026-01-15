import 'package:flutter/material.dart';
import 'package:tunes_with_tharwat/views/home_view.dart';

void main() {
  runApp(TunesPlayerApp());
}

class TunesPlayerApp extends StatelessWidget {
  const TunesPlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
