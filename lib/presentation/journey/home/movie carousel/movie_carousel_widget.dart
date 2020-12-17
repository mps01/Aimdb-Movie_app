import 'package:flutter/material.dart';
import 'package:movies_app/domain/entities/movie_entity.dart';
import 'package:movies_app/presentation/journey/home/movie%20carousel/movie_page_view.dart';
import 'package:movies_app/presentation/widgets/movie_app_bar.dart';

import 'movie_backdrop_widget.dart';
import 'movie_data_widget.dart';

class MovieCarouselWidget extends StatelessWidget {
  final List<MovieEntity> movies;
  final int defaultIndex;

  const MovieCarouselWidget({
    Key key,
    @required this.defaultIndex,
    @required this.movies,
  })  : assert(defaultIndex >= 0, 'default index cannot be less than 0'),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        MovieBackdropWidget(),
        Column(
          children: [
            MovieAppBar(),
            MoviePageView(
              movies: movies,
              initialPage: defaultIndex,
            ),
            MovieDataWidget(),
          ],
        ),
      ],
    );
  }
}
