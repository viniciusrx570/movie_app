import 'package:flutter/material.dart';
import 'package:movie_app/controllers/movie_controller.dart';
import 'package:movie_app/pages/widget/card_movie.dart';
import 'package:movie_app/repositories/movies_repository_imp.dart';
import 'package:movie_app/services/dio_service_imp.dart';
import 'package:lottie/lottie.dart';

import '../models/movie_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final MovieController _controller;
  @override
  void initState() {
    super.initState();
    _controller = MovieController(
      MovieRepositoryImp(
        DioServiceImp(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movie Home',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 28.0, right: 20.0),
          child: Column(
            children: [
              TextField(
                onChanged: _controller.onChanged,
              ),
              SizedBox(height: 15),
              Expanded(
                child: ValueListenableBuilder<Movies?>(
                  valueListenable: _controller.movies,
                  builder: (context, movies, __) {
                    return movies != null
                        ? ListView.separated(
                            separatorBuilder: (_, index) => Divider(
                              color: Theme.of(context).cardColor,
                            ),
                            itemCount: movies.movieList.length,
                            itemBuilder: (_, idx) =>
                                CardList(movie: movies.movieList[idx]),
                          )
                        : LottieBuilder.asset('assets/lottie.json');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
