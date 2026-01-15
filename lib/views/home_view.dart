import 'package:flutter/material.dart';
import 'package:tunes_with_tharwat/models/tune_model.dart';
import 'package:tunes_with_tharwat/widgets/tunes_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final List<TuneModel> items = const [
    TuneModel(color: Color(0xffFD3F37), sound: 'sounds/note1.wav'),
    TuneModel(color: Color(0xffFC9729), sound: 'sounds/note2.wav'),
    TuneModel(color: Color(0xffFCEA55), sound: 'sounds/note3.wav'),
    TuneModel(color: Color(0xff32AE55), sound: 'sounds/note4.wav'),
    TuneModel(color: Color(0xff009486), sound: 'sounds/note5.wav'),
    TuneModel(color: Color(0xff0096EA), sound: 'sounds/note6.wav'),
    TuneModel(color: Color(0xffA126AA), sound: 'sounds/note7.wav'),
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
