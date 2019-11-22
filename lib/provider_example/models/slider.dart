import 'package:flutter/material.dart';
import 'package:flutter_examples/provider_example/models/schedule.dart';
import 'package:provider/provider.dart';

class MySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final schedule = Provider.of<MySchedule>(context);
    return Slider(
      value: schedule.stateManagementValue,
      onChanged: (value){
        schedule.stateManagementValue = value;  
      },
    );
  }
}