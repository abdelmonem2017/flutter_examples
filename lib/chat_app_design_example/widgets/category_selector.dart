import 'package:flutter/material.dart';
import 'package:flutter_examples/style/theme.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Messages', 'Online', 'Groups', 'Requests'];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.0,
        color: chatTheme.primaryColor,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(categories[index],
                    style: TextStyle(
                        color: selectedIndex == index
                            ? Colors.white
                            : Colors.white60,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0)),
              ),
            );
          },
        ));
  }
}
