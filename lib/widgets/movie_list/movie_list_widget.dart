import 'package:flutter/material.dart';

import 'package:movie_db_project/resources/resources.dart';

class Movie {
  final int id;
  final String imageName;
  final String title;
  final String time;
  final String description;
  Movie({
    required this.id,
    required this.imageName,
    required this.title,
    required this.time,
    required this.description,
  });
}

class MovieListWidget extends StatefulWidget {
  MovieListWidget({Key? key}) : super(key: key);

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final _movies = [
    Movie(
      id: 1,
      imageName: Images.whoto,
      title: 'asdasd',
      time: 'asdasd',
      description: 'sadasdadad',
    ),
    Movie(
      id: 2,
      imageName: Images.whoto,
      title: 'asdasd',
      time: 'asdasd',
      description: 'sadasdadad',
    ),
    Movie(
      id: 3,
      imageName: Images.whoto,
      title: '1',
      time: 'asdasd',
      description: 'sadasdadad',
    ),
    Movie(
      id: 4,
      imageName: Images.whoto,
      title: 's',
      time: 's',
      description: 'sadasdadad',
    ),
  ];

  var _filteredMovies = <Movie>[];

  final _searchController = TextEditingController();

  void _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredMovies = _movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredMovies = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filteredMovies = _movies;
    _searchController.addListener(_searchMovies);
  }

  void _onMovieTap(int index) {
    final id = _movies[index].id;
    Navigator.of(context).pushNamed(
      '/main_screen/movie_details',
      arguments: 'id',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: const EdgeInsets.only(top: 70.0),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filteredMovies.length,
          itemExtent: 163.0,
          itemBuilder: (BuildContext context, int index) {
            final movie = _filteredMovies[index];
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Stack(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black.withOpacity(0.2),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8.0,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Image.asset(movie.imageName),
                        const SizedBox(width: 15.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(height: 20.0),
                              Text(
                                movie.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5.0),
                              Text(
                                movie.time,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(height: 20.0),
                              Text(
                                movie.description,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  Material(
                    child: InkWell(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      onTap: () => _onMovieTap(index),
                    ),
                    color: Colors.transparent,
                  ),
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Search',
              filled: true,
              fillColor: Colors.white.withAlpha(230),
              border: OutlineInputBorder(),
            ),
          ),
        )
      ],
    );
  }
}
