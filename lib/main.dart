import 'package:flutter/material.dart';
import 'package:movie_app/utils/exceptiontextclr.dart';
import 'package:movie_app/widgets/toprated.dart';
import 'package:movie_app/widgets/trending.dart';
import 'package:movie_app/widgets/tv.dart';
import 'package:tmdb_api/tmdb_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light,    primarySwatch: Colors.orange),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List trendingmovies = [];
  List topratedmovis = [];
  List tv = [];

  final String apikey = 'edbee4368df68b0826a1c083c40f6451';
  final readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlZGJlZTQzNjhkZjY4YjA4MjZhMWMwODNjNDBmNjQ1MSIsInN1YiI6IjYyYTIwMmQxZTIyZDI4MDBhODg0NWQ4YSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.xuHC-YqJyg-Zo6-dMCfY3ecyMlK_RgbRaMLLQ5nhsDw';

  @override
  void initState() {
    loadmovies();
    super.initState();
  }

  loadmovies() async {
    TMDB tmdbWithCustomLogs = TMDB(ApiKeys(apikey, readaccesstoken),
        logConfig: const ConfigLogger(showErrorLogs: true, showLogs: true));
    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
    Map topratedresult = await tmdbWithCustomLogs.v3.movies.getTopRated();
    Map tvresult = await tmdbWithCustomLogs.v3.tv.getPopular();

    setState(() {
      trendingmovies = trendingresult['results'];
      topratedmovis = topratedresult['results'];
      tv = tvresult['results'];
    });

    // ignore: avoid_print
    print(trendingmovies);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(title: const Center(child: Text("BABS MOVIES",style:TextStyle(color: Colors.white),))),

      body: ListView(
        
children: [
  TV(tv: tv),
  
  TopRated(toprated: topratedmovis),
TrendingMovies(trending:trendingmovies)

],

      ),
    );
  }
}
