import 'package:anime_app/models/anime_model.dart';
import 'package:flutter/material.dart';

class AnimeDetails extends StatelessWidget {
  final AnimeModel animeModel;
  const AnimeDetails({super.key, required this.animeModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(animeModel.title),
      ),
      body: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Row(
                children: [
                  Image.network(animeModel.imageUrl),
                  Column(
                    children: [
                      Text("Title: " + animeModel.title),
                      Text("English Title: " + animeModel.englishTitle),
                      Text("Rating: " + animeModel.rating.toString()),
                      Text("Status: " + animeModel.status),
                      Text("Source: " + animeModel.source),
                      Text("Episodes: " + animeModel.episodes.toString()),
                    ],
                  )
                ],
              )),
          Row(
            children: [Text(animeModel.synopsis)],
          )
        ],
      ),
    );
  }
}
