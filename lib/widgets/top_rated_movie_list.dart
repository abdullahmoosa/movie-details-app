// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../screen/movie_details_screen.dart';
import '../model/movies.dart';

class TopRatedMovieList extends StatelessWidget {
  final int index;
  TopRatedMovieList(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(MovieDetailsScreen.routeName, arguments: {
            'id': topRatedMovieList[index].id,
            'title': topRatedMovieList[index].title,
            'imageUrl': topRatedMovieList[index].imageUrl,
            'description': topRatedMovieList[index].description,
            'rating': topRatedMovieList[index].rating,
            'year': topRatedMovieList[index].year,
            'duration': topRatedMovieList[index].duration,
          });
        },
        child: Column(
          children: <Widget>[
            Card(
              elevation: 8,
              child: Hero(
                tag: topRatedMovieList[index].id,
                child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                topRatedMovieList[index].imageUrl)))),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              topRatedMovieList[index].title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
