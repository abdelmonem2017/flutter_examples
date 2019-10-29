import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_examples/netflex_app_desgin_example/models/movie_model.dart';
import 'package:flutter_examples/netflex_app_desgin_example/sample_data/sample_data.dart';
import 'package:flutter_examples/netflex_app_desgin_example/widgets/content_scroll.dart';

class MovieScreen extends StatefulWidget {
  Movie movie;
  MovieScreen({this.movie});

  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                transform: Matrix4.translationValues(0, -50, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(120),
                        bottomRight: Radius.circular(120)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0, 4),
                          blurRadius: 6)
                    ]),
                child: Hero(
                  tag: widget.movie.posterUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(120),
                        bottomRight: Radius.circular(120)),
                    child: Image(
                      image: AssetImage(widget.movie.posterUrl),
                      height: 400,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.only(left: 30),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30,
                    color: Colors.black,
                  ),
                  Image(
                    image: AssetImage(
                      'assets/images/netflex_app_img//netflex_logo.png',
                    ),
                    width: 150,
                    height: 60,
                  ),
                  IconButton(
                    padding: EdgeInsets.only(right: 30),
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                    iconSize: 30,
                    color: Colors.black,
                  )
                ],
              ),
              Positioned.fill(
                bottom: 10,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: RawMaterialButton(
                    padding: EdgeInsets.all(10),
                    elevation: 12,
                    onPressed: () {},
                    shape: CircleBorder(),
                    fillColor: Colors.white,
                    child: Icon(Icons.play_arrow, color: Colors.red, size: 60),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 20,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  iconSize: 40,
                  color: Colors.black,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 20,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share),
                  iconSize: 35,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    widget.movie.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              )),
          Text(
            'Action, Commdy',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black54),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '⭐ ⭐ ⭐ ⭐',
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'Year',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.movie.year,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Country',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.movie.country,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'duration',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${widget.movie.duration} min',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Container(
              height: 120,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: SingleChildScrollView(
                  child: Text(
                widget.movie.desc,
                style: TextStyle(color: Colors.black54),
              ))),
          ContentScroll(
            images: screenShoots,
            title: 'SreenShoots',
            imageHeight: 200,
            imageWidth: 250,
          )
        ],
      ),
    );
  }
}
