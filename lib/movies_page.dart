import 'package:flutter/material.dart';

import 'movie.dart';
import 'movie_item.dart';

class MoviesPage extends StatefulWidget {
  MoviesPage({Key key}) : super(key: key);

  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  List<Movie> movies;

  @override
  void initState() {
    movies = [];
    movies.add(
      Movie(
          title: "Joker",
          image: "assets/images/joker.jpeg",
          relaseDate: DateTime.now()),
    );
    movies.add(
      Movie(
          title: "Black Panther",
          image: "assets/images/black-panther.jpeg",
          relaseDate: DateTime.now()),
    );
    movies.add(
      Movie(
          title: "Avater",
          image: "assets/images/avatar.jpeg",
          relaseDate: DateTime.now()),
    );
    movies.add(
      Movie(
          title: "Avater",
          image: "assets/images/moonlight.jpeg",
          relaseDate: DateTime.now()),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Movie App")),
      body: Container(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: movies.length,
          itemBuilder: (_, index) {
            Movie movie = movies[index];
            return MovieItem(movie);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: null,
        label: Row(
          children: [
            Icon(Icons.umbrella, color: Colors.white),
            SizedBox(width: 10),
            Text(
              "Your Ticket",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
