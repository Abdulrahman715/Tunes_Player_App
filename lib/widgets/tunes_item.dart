import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tunes_with_tharwat/models/tune_model.dart';

class TunesItem extends StatelessWidget {
  const TunesItem({super.key, required this.tunes});

  final TuneModel tunes;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () async{
          final player = AudioPlayer();
          await player.play(AssetSource(tunes.sound));
        },
        child: Container(color: tunes.color),
      ),
    );
  }
}
