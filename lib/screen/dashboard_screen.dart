// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import '../widgets/horizontal_list_item.dart';
import '../widgets/vertical_list_item.dart';
import '../model/movies.dart';
import '../widgets/top_rated_movie_list.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies App'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Upcoming Movies',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: Text('View All'))
                ],
              ),
            ),
            Container(
              height: 280,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: movieList.length,
                itemBuilder: (ctx, i) => HorizontalListItem(i),
                scrollDirection: Axis.horizontal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Best of 2022',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: Text('View All'))
                ],
              ),
            ),
            Container(
              height: 500,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: bestMovieList.length,
                itemBuilder: (context, index) => VerticalListItem(index),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Top Rated Movies',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: Text('View All'))
                ],
              ),
            ),
            Container(
              height: 280,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: topRatedMovieList.length,
                itemBuilder: (context, index) => TopRatedMovieList(index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
