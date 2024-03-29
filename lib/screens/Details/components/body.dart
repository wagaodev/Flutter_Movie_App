import 'package:flutter/material.dart';
import 'package:movie_info/core/constants.dart';
import 'package:movie_info/models/movie.dart';
import 'package:movie_info/screens/Details/components/backdrop_rating.dart';
import 'package:movie_info/screens/Details/components/cast_crew.dart';
import 'package:movie_info/screens/Details/components/title_duration.dart';
import 'genres.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BackAndDropRating(size: size, movie: movie),
        SizedBox(height: kDefaultPadding / 2),
        TitleDurationFabBtn(movie: movie),
        Genres(movie: movie),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding,
          ),
          child: Text(
            "Plot Summary",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            movie.plot,
            style: TextStyle(
              color: Color(0xFF737599),
            ),
          ),
        ),
        CastAndCrew(
          casts: movie.cast,
        ),
      ],
    );
  }
}
