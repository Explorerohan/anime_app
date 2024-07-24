import 'package:anime_app/models/anime_model.dart';
import 'package:flutter/material.dart';

class AnimeDetails extends StatelessWidget {
  final AnimeModel animeModel;
  const AnimeDetails({super.key,required this.animeModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(animeModel.title),
      ),
    );
  }
}