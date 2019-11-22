import 'package:flutter/material.dart';
import 'package:flutter_examples/provider_example/models/chart.dart';
import 'package:flutter_examples/provider_example/models/schedule.dart';
import 'package:flutter_examples/provider_example/models/slider.dart';
import 'package:provider/provider.dart';

class Provider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        builder: (context) => MySchedule(),
        child: Column(
          children: <Widget>[
            MyChart(),
            MySlider(),
          ],
        ),
      ),
    );
  }
}
