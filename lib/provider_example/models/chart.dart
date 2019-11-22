import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_examples/provider_example/models/schedule.dart';
import 'package:provider/provider.dart';

class MyChart extends StatefulWidget {
  @override
  _MyChartState createState() => _MyChartState();
}

class _MyChartState extends State<MyChart> {
  int touchedIndex;
  void getData(double value) {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MySchedule>(
        builder: (context, schedule, _) => PieChart(
              PieChartData(
                  pieTouchData:
                      (PieTouchData(touchCallback: (pieTouchResponse) {
                    setState(() {
                      if (pieTouchResponse.touchInput is FlLongPressEnd ||
                          pieTouchResponse.touchInput is FlPanEnd) {
                        touchedIndex = -1;
                      } else {
                        touchedIndex = pieTouchResponse.touchedSectionIndex;
                      }
                    });
                  })),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 50,
                  sections: showingSections(schedule.stateManagementValue)),
            ));
  }

  List<PieChartSectionData> showingSections(double value) {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 25 : 16;
      final double radius = isTouched ? 60 : 50;
      var colori;
      double valuei;
      var texti;
      switch (i) {
        case 0:
          {
            colori = const Color(0xff0293ee);
            valuei = (value * 70);
            texti = "${value * 70}%";
            break;
          }
        case 1:
          {
            colori = const Color(0xff0203ee);
            valuei = (30);
            texti = "30%";
            break;
          }
        case 2:
          {
            colori = const Color(0xfff8b750);
            valuei = (50);
            texti = "50%";
            break;
          }
        case 3:
          {
            colori = const Color(0xff13d38e);
            valuei = (70);
            texti = "70%";
            break;
          }
        default:
          break;
      }
      return PieChartSectionData(
        color: colori,
        value: valuei,
        title: texti,
        radius: radius,
        titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: const Color(0xffffffff)),
      );
    });
  }
}
