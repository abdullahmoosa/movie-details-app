// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../screen/movie_details_screen.dart';

import '../model/movies.dart';

class HorizontalListItem extends StatelessWidget {
  final int index;
  HorizontalListItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(MovieDetailsScreen.routeName, arguments: {
            'id': movieList[index].id,
            'title': movieList[index].title,
            'imageUrl': movieList[index].imageUrl,
            'description': movieList[index].description,
            'rating': movieList[index].rating,
            'year': movieList[index].year,
            'duration': movieList[index].duration,
          });
        },
        child: Column(
          children: <Widget>[
            Card(
              elevation: 8,
              child: Hero(
                tag: movieList[index].id,
                child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(movieList[index].imageUrl)))),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              movieList[index].title,
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
