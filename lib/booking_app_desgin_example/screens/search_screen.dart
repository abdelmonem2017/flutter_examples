import 'package:flutter/material.dart';
import 'package:flutter_examples/booking_app_desgin_example/sample_data/sample_data.dart';
import 'package:flutter_examples/booking_app_desgin_example/screens/place_screen.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // hotels = 0, flight = 1
  int _searchType = 0;

  Column _buildPopularPlaces() {
    List<Widget> popularPlaces = [];
    places.forEach((place) {
      popularPlaces.add(Container(
          height: 80,
          child: Center(
              child: ListTile(
            leading: Hero(
                tag: place.imageUrl,
                child: Image(image: AssetImage(place.imageUrl))),
            title: Text(
              place.city,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "${place.properites} properites",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            trailing: InkResponse(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlaceScreen(place: place),
                  ),
                );
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFFAF6F1)),
                child: Icon(
                  Icons.arrow_forward,
                  size: 25,
                  color: Colors.black,
                ),
              ),
            ),
          ))));
    });
    return Column(children: popularPlaces);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  print('Menu');
                },
                icon: Icon(Icons.menu),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Book unique homes\nand experiences',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                        color: _searchType == 0
                            ? Colors.transparent
                            : Color(0xFFD2D1D5))),
                color: _searchType == 0 ? Color(0xFFFFC05F) : null,
                child: Text(
                  'Hotels',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  setState(() {
                    _searchType = 0;
                  });
                },
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                        color: _searchType == 1
                            ? Colors.transparent
                            : Color(0xFFD2D1D5))),
                color: _searchType == 1 ? Color(0xFFFFC05F) : null,
                child: Text(
                  'Flight',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  setState(() {
                    _searchType = 1;
                  });
                },
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Where",
                icon: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFEEF8FF)),
                  child: Icon(
                    Icons.location_on,
                    color: Colors.blue,
                    size: 25,
                  ),
                )),
          ),
          Divider(
            height: 40,
            color: Colors.grey,
          ),
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Chech-in  Chick-out",
                icon: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFEEF8FF)),
                  child: Icon(
                    Icons.calendar_today,
                    color: Colors.blue,
                    size: 25,
                  ),
                )),
          ),
          Divider(
            height: 40,
            color: Colors.grey,
          ),
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "2 Adults, 0 Children, 1 Room",
                icon: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFEEF8FF)),
                  child: Icon(
                    Icons.person,
                    color: Colors.blue,
                    size: 25,
                  ),
                )),
          ),
          Divider(
            height: 40,
            color: Colors.grey,
          ),
          FlatButton(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.transparent)),
            color: Color(0xFF309DF1),
            child: Text(
              'Search',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              setState(() {
                _searchType = 1;
              });
            },
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Popular places',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          _buildPopularPlaces(),
        ],
      ),
    );
  }
}
