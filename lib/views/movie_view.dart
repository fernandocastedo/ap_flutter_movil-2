
import 'package:apfernando/viewmodels/movie_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieView extends StatelessWidget{
  const MovieView({super.key});
  @override
  Widget build (BuildContext context){
    final movieViewModel = Provider.of<MovieViewModel>(context);
    return Scaffold(
    appBar: AppBar(title: Text("My movies MVVM"),),
    body: movieViewModel.charging? Center(child: CircularProgressIndicator(),):
    ListView.builder{
      itemBuilder: (context, index({
    final movie = movieViewmodel.movies[index];
    return ListTitle(title: Text("$movie.title}($movie.year})"),
    subtitle: Text ("${movie.director}, (${movie.genre}"),
    );
    },
    itemCount: movieViewModel.movies.Length,
    )
    ,
    floationActionButton: FloationActionButton(onPressed: (){
    movieViewmodel.fetchMovies();
    },
      child: Icon(Icons.refresh),)
    }))
    },
    };
  }

}