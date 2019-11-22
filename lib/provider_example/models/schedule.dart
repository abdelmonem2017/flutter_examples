 
import 'package:flutter/foundation.dart';

class MySchedule with ChangeNotifier{
  double _stateManagementValue = 0.5;

  double get stateManagementValue => _stateManagementValue;

  set stateManagementValue(double value){
    _stateManagementValue = value; 
    notifyListeners();
  }
  }