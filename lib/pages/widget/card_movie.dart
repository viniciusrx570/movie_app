import 'package:flutter/material.dart';
import 'package:movie_app/utls_api/api_utils.dart';

import '../../models/movie_model.dart';

class CardList extends StatelessWidget {
  final Movie movie;

  const CardList({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(10),
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),

        ),
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                child: Image.network(
                  API.REQUEST_IMG(movie.posterPath),
                height: 200),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8, left: 8),
                      child: Text(
                        movie.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            overflow: TextOverflow.visible,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        softWrap: true,
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Text('Popularidade: ${movie.popularity}'),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Nota: ${movie.voteAverage}'),

                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
