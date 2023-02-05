import 'package:flutter/material.dart';
import 'package:structure_project_demo/core/utils/global.dart';


class Helper {
  static doSum(int a, int b) {
    // Global.sum=Global.first+Global.second;
    Global.sum = a + b;
    return Global.sum;
  }

  static oddEven(double a) {
    Global.c = a;
    if (Global.c! % 2 == 0) {
      debugPrint("number is even ${Global.c}");
    } else {
      debugPrint("number is odd ${Global.c}");
    }
  }

  static doCheck() {
    for (int i = 0; i <= 10; i++) {
      Global.total = Global.total + i;
    }
    debugPrint("loop ${Global.total}");
  }

  static doMake() {
    int totlaSum = 0;
    for (int i = 0; i <= 10; i++) {
      totlaSum = totlaSum + i;
    }
    debugPrint("totalSum $totlaSum");
  }

  static doMak() {
    for (int i = 0; i <= 10; i++) {
      Global.total = Global.total + i;
    }
    debugPrint("loop ${Global.total}");
  }

  doA() {
    debugPrint("AAAAAAAA ${Global.total}");
  }
  doSelect(int index){
    Global.initalIndex=index;

    
  }
}
