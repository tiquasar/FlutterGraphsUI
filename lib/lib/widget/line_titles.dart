import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
    show: false,
    bottomTitles: SideTitles(
      showTitles: true,
      reservedSize: 35,
      getTextStyles: (value) => const TextStyle(
        color: Color(0xff68737d),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      getTitles: (value) {
        switch (value.toInt()) {
          case 0:
            return ' ';
          case 1:
            return ' ';
          case 2:
            return ' ';
        }
        return ' ';
      },
      margin: 8,
    ),
    leftTitles: SideTitles(
      showTitles: true,
      getTextStyles: (value) => const TextStyle(
        color: Color(0xff67727d),
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      getTitles: (value) {
        switch (value.toInt()) {
          case 1:
            return ' ';
          case 3:
            return ' ';
          case 5:
            return ' ';
        }
        return ' ';
      },
      reservedSize: 35,
      margin: 12,
    ),
  );
}
