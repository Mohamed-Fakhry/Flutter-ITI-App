import 'package:flutter/material.dart';

import 'movie.dart';

class MovieItem extends StatelessWidget {
  Movie movie;

  MovieItem(this.movie, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Container(
              height: 100,
              child: Image.asset(movie.image),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  movie.title,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                Text(
                  movie.relaseDate.day.toString() +
                      " / " +
                      movie.relaseDate.year.toString(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
