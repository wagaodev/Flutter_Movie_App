import 'package:flutter/material.dart';
import 'package:movie_info/core/constants.dart';
import 'package:movie_info/screens/Home/components/categories.dart';
import 'package:movie_info/screens/Home/components/genres.dart';
import 'package:movie_info/screens/Home/components/movie_carousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CategoryList(),
          Genres(),
          SizedBox(height: kDefaultPadding),
          MovieCarousel(),
        ],
      ),
    );
  }
}
