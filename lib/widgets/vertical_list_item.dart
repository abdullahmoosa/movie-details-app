// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../model/movies.dart';
import '../screen/movie_details_screen.dart';

class VerticalListItem extends StatelessWidget {
  final int index;
  VerticalListItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(MovieDetailsScreen.routeName, arguments: {
              'id': bestMovieList[index].id,
              'title': bestMovieList[index].title,
              'imageUrl': bestMovieList[index].imageUrl,
              'description': bestMovieList[index].description,
              'rating': bestMovieList[index].rating,
              'year': bestMovieList[index].year,
              'duration': bestMovieList[index].duration,
            });
          },
          child: Card(
            elevation: 5,
            child: Row(
              children: <Widget>[
                Hero(
                  tag: bestMovieList[index].id,
                  child: Container(
                    // color: Colors.white70,
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            topLeft: Radius.circular(5)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                NetworkImage(bestMovieList[index].imageUrl))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 240,
                        child: Text(
                          bestMovieList[index].title,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: 240,
                          child: AutoSizeText(
                            bestMovieList[index].description,
                            style: TextStyle(fontSize: 15),
                            maxLines: 5,
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
