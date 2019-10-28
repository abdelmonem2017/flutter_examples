import 'package:flutter/material.dart';
import 'package:flutter_examples/style/theme.dart';
import 'package:flutter_examples/travel_app_desgin_example/widgets/destination_carsoul.dart';
import 'package:flutter_examples/travel_app_desgin_example/widgets/exclusive_carsoul.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TravelApp extends StatefulWidget {
  @override
  _TravelAppState createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  int selectedIndex = 0;
  int _currentIndex = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: selectedIndex == index
                ? travelTheme.accentColor
                : Color(0xFFE7EBEE),
            borderRadius: BorderRadius.circular(38)),
        child: Icon(
          _icons[index],
          size: 25,
          color: selectedIndex == index
              ? travelTheme.primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
              padding: EdgeInsets.symmetric(vertical: 30),
              children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, right: 120),
              child: Text(
                'what would you like to find?',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map((MapEntry map) => _buildIcon(map.key))
                  .toList(),
            ),
            DestinationCarsoul(destination: 'Top Destinations'),
            ExclusiveCarsoul(destination: 'Exclusive Hotels'),
          ])),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30), title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(Icons.monochrome_photos, size: 30),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15,
                backgroundImage:
                    AssetImage('assets/images/travel_app_img/hotel.jpg'),
              ),
              title: SizedBox.shrink())
        ],
      ),
    );
  }
}
