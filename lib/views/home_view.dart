import 'package:flutter/material.dart';
import 'package:tunes_with_tharwat/models/tune_model.dart';
import 'package:tunes_with_tharwat/widgets/tunes_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final List<TuneModel> items = const [
    TuneModel(color: Color.fromARGB(255, 143, 137, 137), sound: 'sounds/note1.wav'),
    TuneModel(color: Color.fromARGB(255, 141, 97, 51), sound: 'sounds/note2.wav'),
    TuneModel(color: Color.fromARGB(255, 160, 158, 145), sound: 'sounds/note3.wav'),
    TuneModel(color: Color.fromARGB(255, 58, 85, 66), sound: 'sounds/note4.wav'),
    TuneModel(color: Color.fromARGB(255, 117, 153, 149), sound: 'sounds/note5.wav'),
    TuneModel(color: Color.fromARGB(255, 166, 174, 179), sound: 'sounds/note6.wav'),
    TuneModel(color: Color.fromARGB(255, 146, 142, 146), sound: 'sounds/note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff233037),
        centerTitle: true,
        title: Text(
          'Flutter Tunes',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

      body: Column(
        children: items.map((e) => TunesItem(tunes: e)).toList(),
      ),
    );
  }
}
