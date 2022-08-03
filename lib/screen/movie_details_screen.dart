// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MovieDetailsScreen extends StatelessWidget {
  static const routeName = '/movie-details';
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final id = routeArgs['id'];
    final title = routeArgs['title'];
    final imageUrl = routeArgs['imageUrl'];
    final description = routeArgs['description'];
    final rating = routeArgs['rating'];
    final year = routeArgs['year'];
    final duration = routeArgs['duration'];
    String finalRating;
    if (rating == 'TBD') {
      finalRating = rating!;
    } else {
      finalRating = '${rating}/10.0';
    }

    return Scaffold(
      appBar: AppBar(
          // title: Text('Movie Details'),
          ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                  elevation: 10,
                  child: Hero(
                    tag: id!,
                    child: Container(
                      height: 400,
                      width: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(5),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(imageUrl!))),
                    ),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              title!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Card(
                  elevation: 8,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.timer,
                          size: 45,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          duration!,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 8,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.calendar_today_rounded,
                          size: 45,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          year!,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 8,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.star_border,
                          size: 45,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          finalRating,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              description!,
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
