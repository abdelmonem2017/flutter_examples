import 'package:flutter/material.dart';
import 'package:flutter_examples/netflex_app_desgin_example/sample_data/sample_data.dart';
import 'package:flutter_examples/netflex_app_desgin_example/screens/movie_screen.dart';
import 'package:flutter_examples/netflex_app_desgin_example/widgets/content_scroll.dart';

class NetFlexApp extends StatefulWidget {
  @override
  _NetFlexAppState createState() => _NetFlexAppState();
}

class _NetFlexAppState extends State<NetFlexApp> {
  PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  _movieSelector(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.4) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 270.0,
            width: Curves.easeInOut.transform(value) * 400.0,
            child: widget,
          ),
        );
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MovieScreen(movie: movies[index])),
          );
        },
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0, 4),
                          blurRadius: 10)
                    ]),
                child: Center(
                  child: Hero(
                    tag: movies[index].posterUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: AssetImage(movies[index].posterUrl),
                        height: 220,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30,
              bottom: 40,
              child: Container(
                width: 250,
                child: Text(
                  movies[index].name.toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image(
          image: AssetImage('assets/images/netflex_app_img//netflex_logo.png'),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          iconSize: 30,
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 30,
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            child: PageView.builder(
              controller: _pageController,
              itemCount: movies.length,
              itemBuilder: (BuildContext context, int index) {
                return _movieSelector(index);
              },
            ),
          ),
          Container(
            height: 90,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 30),
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFD45253), Color(0xFF9E1F28)]),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF9E1F28),
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0)
                      ]),
                  child: Center(
                    child: Text(
                      movies[index].name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.8),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ContentScroll(
            images: screenShoots,
            title: 'My List',
            imageHeight: 250,
            imageWidth: 150,
          ),
          SizedBox(
            height: 20,
          ),
          ContentScroll(
            images: popular,
            title: 'Popular',
            imageHeight: 250,
            imageWidth: 150,
          ),
        ],
      ),
    );
  }
}
