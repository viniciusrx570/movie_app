import 'package:flutter/material.dart';

import '../models/movie_model.dart';
import '../utls_api/api_utils.dart';

class DetailsPage extends StatelessWidget {
  final Movie movie;

  const DetailsPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .55,
              width: MediaQuery.of(context).size.width,
              child: Hero(
                tag: movie.id,
                child: Image.network(
                  API.REQUEST_IMG(movie.posterPath),
                  loadingBuilder: (context, child, progress) {
                    if (progress == null) {
                      return child;
                    } else {
                      return CircularProgressIndicator.adaptive();
                    }
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(movie.overview, style: Theme.of(context).textTheme.bodyLarge,),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.title),
                Text(movie.originalTitle,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.new_releases),
                Text(movie.releaseDate),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
