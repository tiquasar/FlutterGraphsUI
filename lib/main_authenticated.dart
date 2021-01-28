import 'dart:convert';
import 'dart:io';
import 'package:intl/intl.dart';
import 'dart:async';
import 'dart:typed_data';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app_development/results_screen/GoogleAuthenticated.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:fl_chart/fl_chart.dart';
import 'lib/widget/line_titles.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'main.dart';
import 'main_screens/LoginPage.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'APP DEVELOPMENT DEMO APP '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var value = [];
  var valuet = [];

  Widget _status(status) {
    if (status == 1) {
      return LineChart(
        LineChartData(
          minX: 0,
          maxX: 10,
          minY: 0,
          maxY: 12000,
          titlesData: LineTitles.getTitleData(),
          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 0.2,
              );
            },
            drawVerticalLine: true,
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 0.2,
              );
            },
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: const Color(0xff37434d), width: 1),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(double.parse(valuet[0]), double.parse(value[0])),
                FlSpot(double.parse(valuet[1]), double.parse(value[1])),
                FlSpot(double.parse(valuet[2]), double.parse(value[2])),
                FlSpot(double.parse(valuet[3]), double.parse(value[3])),
                FlSpot(double.parse(valuet[4]), double.parse(value[4])),
                FlSpot(double.parse(valuet[5]), double.parse(value[5])),
                FlSpot(double.parse(valuet[6]), double.parse(value[6])),
                FlSpot(double.parse(valuet[7]), double.parse(value[7])),
                FlSpot(double.parse(valuet[8]), double.parse(value[8])),
                FlSpot(double.parse(valuet[9]), double.parse(value[9])),
                FlSpot(double.parse(valuet[10]), double.parse(value[10])),
              ],
              isCurved: true,
              colors: GradientColors.blue,
              barWidth: 5,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: false,
                colors: GradientColors.lightBlue,
              ),
            ),
          ],
        ),
      );
    } else if (status == 2) {
      return LineChart(
        LineChartData(
          minX: 0,
          maxX: 120,
          minY: 0,
          maxY: 20000,
          titlesData: LineTitles.getTitleData(),
          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 0.2,
              );
            },
            drawVerticalLine: true,
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 0.2,
              );
            },
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: const Color(0xff37434d), width: 1),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(double.parse(valuet[0]), double.parse(value[0])),
                FlSpot(double.parse(valuet[1]), double.parse(value[1])),
                FlSpot(double.parse(valuet[2]), double.parse(value[2])),
                FlSpot(double.parse(valuet[3]), double.parse(value[3])),
                FlSpot(double.parse(valuet[4]), double.parse(value[4])),
                FlSpot(double.parse(valuet[5]), double.parse(value[5])),
                FlSpot(double.parse(valuet[6]), double.parse(value[6])),
                FlSpot(double.parse(valuet[7]), double.parse(value[7])),
                FlSpot(double.parse(valuet[8]), double.parse(value[8])),
                FlSpot(double.parse(valuet[9]), double.parse(value[9])),
                FlSpot(double.parse(valuet[10]), double.parse(value[10])),
                FlSpot(double.parse(valuet[11]), double.parse(value[11])),
                FlSpot(double.parse(valuet[12]), double.parse(value[12])),
                FlSpot(double.parse(valuet[13]), double.parse(value[13])),
                FlSpot(double.parse(valuet[14]), double.parse(value[14])),
                FlSpot(double.parse(valuet[15]), double.parse(value[15])),
                FlSpot(double.parse(valuet[16]), double.parse(value[16])),
                FlSpot(double.parse(valuet[17]), double.parse(value[17])),
                FlSpot(double.parse(valuet[18]), double.parse(value[18])),
                FlSpot(double.parse(valuet[19]), double.parse(value[19])),
                FlSpot(double.parse(valuet[20]), double.parse(value[20])),
                FlSpot(double.parse(valuet[21]), double.parse(value[21])),
                FlSpot(double.parse(valuet[22]), double.parse(value[22])),
                FlSpot(double.parse(valuet[23]), double.parse(value[23])),
                FlSpot(double.parse(valuet[24]), double.parse(value[24])),
                FlSpot(double.parse(valuet[25]), double.parse(value[25])),
                FlSpot(double.parse(valuet[26]), double.parse(value[26])),
                FlSpot(double.parse(valuet[27]), double.parse(value[27])),
                FlSpot(double.parse(valuet[28]), double.parse(value[28])),
                FlSpot(double.parse(valuet[29]), double.parse(value[29])),
                FlSpot(double.parse(valuet[30]), double.parse(value[30])),
                FlSpot(double.parse(valuet[31]), double.parse(value[31])),
                FlSpot(double.parse(valuet[32]), double.parse(value[32])),
                FlSpot(double.parse(valuet[33]), double.parse(value[33])),
                FlSpot(double.parse(valuet[34]), double.parse(value[34])),
                FlSpot(double.parse(valuet[35]), double.parse(value[35])),
                FlSpot(double.parse(valuet[36]), double.parse(value[36])),
                FlSpot(double.parse(valuet[37]), double.parse(value[37])),
                FlSpot(double.parse(valuet[38]), double.parse(value[38])),
                FlSpot(double.parse(valuet[39]), double.parse(value[39])),
                FlSpot(double.parse(valuet[40]), double.parse(value[40])),
                FlSpot(double.parse(valuet[41]), double.parse(value[41])),
                FlSpot(double.parse(valuet[42]), double.parse(value[42])),
                FlSpot(double.parse(valuet[43]), double.parse(value[43])),
                FlSpot(double.parse(valuet[44]), double.parse(value[44])),
                FlSpot(double.parse(valuet[45]), double.parse(value[45])),
                FlSpot(double.parse(valuet[46]), double.parse(value[46])),
                FlSpot(double.parse(valuet[47]), double.parse(value[47])),
                FlSpot(double.parse(valuet[48]), double.parse(value[48])),
                FlSpot(double.parse(valuet[49]), double.parse(value[49])),
                FlSpot(double.parse(valuet[50]), double.parse(value[50])),
                FlSpot(double.parse(valuet[51]), double.parse(value[51])),
                FlSpot(double.parse(valuet[52]), double.parse(value[52])),
                FlSpot(double.parse(valuet[53]), double.parse(value[53])),
                FlSpot(double.parse(valuet[54]), double.parse(value[54])),
                FlSpot(double.parse(valuet[55]), double.parse(value[55])),
                FlSpot(double.parse(valuet[56]), double.parse(value[56])),
                FlSpot(double.parse(valuet[57]), double.parse(value[57])),
                FlSpot(double.parse(valuet[58]), double.parse(value[58])),
                FlSpot(double.parse(valuet[59]), double.parse(value[59])),
                FlSpot(double.parse(valuet[60]), double.parse(value[60])),
                FlSpot(double.parse(valuet[61]), double.parse(value[61])),
                FlSpot(double.parse(valuet[62]), double.parse(value[62])),
                FlSpot(double.parse(valuet[63]), double.parse(value[63])),
                FlSpot(double.parse(valuet[64]), double.parse(value[64])),
                FlSpot(double.parse(valuet[65]), double.parse(value[65])),
                FlSpot(double.parse(valuet[66]), double.parse(value[66])),
                FlSpot(double.parse(valuet[67]), double.parse(value[67])),
                FlSpot(double.parse(valuet[68]), double.parse(value[68])),
                FlSpot(double.parse(valuet[69]), double.parse(value[69])),
                FlSpot(double.parse(valuet[70]), double.parse(value[70])),
                FlSpot(double.parse(valuet[71]), double.parse(value[71])),
                FlSpot(double.parse(valuet[72]), double.parse(value[72])),
                FlSpot(double.parse(valuet[73]), double.parse(value[73])),
                FlSpot(double.parse(valuet[74]), double.parse(value[74])),
                FlSpot(double.parse(valuet[75]), double.parse(value[75])),
                FlSpot(double.parse(valuet[76]), double.parse(value[76])),
                FlSpot(double.parse(valuet[77]), double.parse(value[77])),
                FlSpot(double.parse(valuet[78]), double.parse(value[78])),
                FlSpot(double.parse(valuet[79]), double.parse(value[79])),
                FlSpot(double.parse(valuet[80]), double.parse(value[80])),
                FlSpot(double.parse(valuet[81]), double.parse(value[81])),
                FlSpot(double.parse(valuet[82]), double.parse(value[82])),
                FlSpot(double.parse(valuet[83]), double.parse(value[83])),
                FlSpot(double.parse(valuet[84]), double.parse(value[84])),
                FlSpot(double.parse(valuet[85]), double.parse(value[85])),
                FlSpot(double.parse(valuet[86]), double.parse(value[86])),
                FlSpot(double.parse(valuet[87]), double.parse(value[87])),
                FlSpot(double.parse(valuet[88]), double.parse(value[88])),
                FlSpot(double.parse(valuet[89]), double.parse(value[89])),
                FlSpot(double.parse(valuet[90]), double.parse(value[90])),
                FlSpot(double.parse(valuet[91]), double.parse(value[91])),
                FlSpot(double.parse(valuet[92]), double.parse(value[92])),
                FlSpot(double.parse(valuet[93]), double.parse(value[93])),
                FlSpot(double.parse(valuet[94]), double.parse(value[94])),
                FlSpot(double.parse(valuet[95]), double.parse(value[95])),
                FlSpot(double.parse(valuet[96]), double.parse(value[96])),
                FlSpot(double.parse(valuet[97]), double.parse(value[97])),
                FlSpot(double.parse(valuet[98]), double.parse(value[98])),
                FlSpot(double.parse(valuet[99]), double.parse(value[99])),
                FlSpot(double.parse(valuet[100]), double.parse(value[100])),
                FlSpot(double.parse(valuet[101]), double.parse(value[101])),
                FlSpot(double.parse(valuet[102]), double.parse(value[102])),
                FlSpot(double.parse(valuet[103]), double.parse(value[103])),
                FlSpot(double.parse(valuet[104]), double.parse(value[104])),
                FlSpot(double.parse(valuet[105]), double.parse(value[105])),
                FlSpot(double.parse(valuet[106]), double.parse(value[106])),
                FlSpot(double.parse(valuet[107]), double.parse(value[107])),
                FlSpot(double.parse(valuet[108]), double.parse(value[108])),
                FlSpot(double.parse(valuet[109]), double.parse(value[109])),
                FlSpot(double.parse(valuet[110]), double.parse(value[110])),
                FlSpot(double.parse(valuet[111]), double.parse(value[111])),
                FlSpot(double.parse(valuet[112]), double.parse(value[112])),
                FlSpot(double.parse(valuet[113]), double.parse(value[113])),
                FlSpot(double.parse(valuet[114]), double.parse(value[114])),
                FlSpot(double.parse(valuet[115]), double.parse(value[115])),
                FlSpot(double.parse(valuet[116]), double.parse(value[116])),
                FlSpot(double.parse(valuet[117]), double.parse(value[117])),
                FlSpot(double.parse(valuet[118]), double.parse(value[118])),
                FlSpot(double.parse(valuet[119]), double.parse(value[119])),
                FlSpot(double.parse(valuet[120]), double.parse(value[120])),
              ],
              isCurved: true,
              colors: GradientColors.blue,
              barWidth: 5,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: false,
                colors: GradientColors.lightBlue,
              ),
            ),
          ],
        ),
      );
    } else if (status == 3) {
      return LineChart(
        LineChartData(
          minX: 0,
          maxX: 245,
          minY: 0,
          maxY: 20000,
          titlesData: LineTitles.getTitleData(),
          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 0.2,
              );
            },
            drawVerticalLine: true,
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 0.2,
              );
            },
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: const Color(0xff37434d), width: 1),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(double.parse(valuet[0]), double.parse(value[0])),
                FlSpot(double.parse(valuet[1]), double.parse(value[1])),
                FlSpot(double.parse(valuet[2]), double.parse(value[2])),
                FlSpot(double.parse(valuet[3]), double.parse(value[3])),
                FlSpot(double.parse(valuet[4]), double.parse(value[4])),
                FlSpot(double.parse(valuet[5]), double.parse(value[5])),
                FlSpot(double.parse(valuet[6]), double.parse(value[6])),
                FlSpot(double.parse(valuet[7]), double.parse(value[7])),
                FlSpot(double.parse(valuet[8]), double.parse(value[8])),
                FlSpot(double.parse(valuet[9]), double.parse(value[9])),
                FlSpot(double.parse(valuet[10]), double.parse(value[10])),
                FlSpot(double.parse(valuet[11]), double.parse(value[11])),
                FlSpot(double.parse(valuet[12]), double.parse(value[12])),
                FlSpot(double.parse(valuet[13]), double.parse(value[13])),
                FlSpot(double.parse(valuet[14]), double.parse(value[14])),
                FlSpot(double.parse(valuet[15]), double.parse(value[15])),
                FlSpot(double.parse(valuet[16]), double.parse(value[16])),
                FlSpot(double.parse(valuet[17]), double.parse(value[17])),
                FlSpot(double.parse(valuet[18]), double.parse(value[18])),
                FlSpot(double.parse(valuet[19]), double.parse(value[19])),
                FlSpot(double.parse(valuet[20]), double.parse(value[20])),
                FlSpot(double.parse(valuet[21]), double.parse(value[21])),
                FlSpot(double.parse(valuet[22]), double.parse(value[22])),
                FlSpot(double.parse(valuet[23]), double.parse(value[23])),
                FlSpot(double.parse(valuet[24]), double.parse(value[24])),
                FlSpot(double.parse(valuet[25]), double.parse(value[25])),
                FlSpot(double.parse(valuet[26]), double.parse(value[26])),
                FlSpot(double.parse(valuet[27]), double.parse(value[27])),
                FlSpot(double.parse(valuet[28]), double.parse(value[28])),
                FlSpot(double.parse(valuet[29]), double.parse(value[29])),
                FlSpot(double.parse(valuet[30]), double.parse(value[30])),
                FlSpot(double.parse(valuet[31]), double.parse(value[31])),
                FlSpot(double.parse(valuet[32]), double.parse(value[32])),
                FlSpot(double.parse(valuet[33]), double.parse(value[33])),
                FlSpot(double.parse(valuet[34]), double.parse(value[34])),
                FlSpot(double.parse(valuet[35]), double.parse(value[35])),
                FlSpot(double.parse(valuet[36]), double.parse(value[36])),
                FlSpot(double.parse(valuet[37]), double.parse(value[37])),
                FlSpot(double.parse(valuet[38]), double.parse(value[38])),
                FlSpot(double.parse(valuet[39]), double.parse(value[39])),
                FlSpot(double.parse(valuet[40]), double.parse(value[40])),
                FlSpot(double.parse(valuet[41]), double.parse(value[41])),
                FlSpot(double.parse(valuet[42]), double.parse(value[42])),
                FlSpot(double.parse(valuet[43]), double.parse(value[43])),
                FlSpot(double.parse(valuet[44]), double.parse(value[44])),
                FlSpot(double.parse(valuet[45]), double.parse(value[45])),
                FlSpot(double.parse(valuet[46]), double.parse(value[46])),
                FlSpot(double.parse(valuet[47]), double.parse(value[47])),
                FlSpot(double.parse(valuet[48]), double.parse(value[48])),
                FlSpot(double.parse(valuet[49]), double.parse(value[49])),
                FlSpot(double.parse(valuet[50]), double.parse(value[50])),
                FlSpot(double.parse(valuet[51]), double.parse(value[51])),
                FlSpot(double.parse(valuet[52]), double.parse(value[52])),
                FlSpot(double.parse(valuet[53]), double.parse(value[53])),
                FlSpot(double.parse(valuet[54]), double.parse(value[54])),
                FlSpot(double.parse(valuet[55]), double.parse(value[55])),
                FlSpot(double.parse(valuet[56]), double.parse(value[56])),
                FlSpot(double.parse(valuet[57]), double.parse(value[57])),
                FlSpot(double.parse(valuet[58]), double.parse(value[58])),
                FlSpot(double.parse(valuet[59]), double.parse(value[59])),
                FlSpot(double.parse(valuet[60]), double.parse(value[60])),
                FlSpot(double.parse(valuet[61]), double.parse(value[61])),
                FlSpot(double.parse(valuet[62]), double.parse(value[62])),
                FlSpot(double.parse(valuet[63]), double.parse(value[63])),
                FlSpot(double.parse(valuet[64]), double.parse(value[64])),
                FlSpot(double.parse(valuet[65]), double.parse(value[65])),
                FlSpot(double.parse(valuet[66]), double.parse(value[66])),
                FlSpot(double.parse(valuet[67]), double.parse(value[67])),
                FlSpot(double.parse(valuet[68]), double.parse(value[68])),
                FlSpot(double.parse(valuet[69]), double.parse(value[69])),
                FlSpot(double.parse(valuet[70]), double.parse(value[70])),
                FlSpot(double.parse(valuet[71]), double.parse(value[71])),
                FlSpot(double.parse(valuet[72]), double.parse(value[72])),
                FlSpot(double.parse(valuet[73]), double.parse(value[73])),
                FlSpot(double.parse(valuet[74]), double.parse(value[74])),
                FlSpot(double.parse(valuet[75]), double.parse(value[75])),
                FlSpot(double.parse(valuet[76]), double.parse(value[76])),
                FlSpot(double.parse(valuet[77]), double.parse(value[77])),
                FlSpot(double.parse(valuet[78]), double.parse(value[78])),
                FlSpot(double.parse(valuet[79]), double.parse(value[79])),
                FlSpot(double.parse(valuet[80]), double.parse(value[80])),
                FlSpot(double.parse(valuet[81]), double.parse(value[81])),
                FlSpot(double.parse(valuet[82]), double.parse(value[82])),
                FlSpot(double.parse(valuet[83]), double.parse(value[83])),
                FlSpot(double.parse(valuet[84]), double.parse(value[84])),
                FlSpot(double.parse(valuet[85]), double.parse(value[85])),
                FlSpot(double.parse(valuet[86]), double.parse(value[86])),
                FlSpot(double.parse(valuet[87]), double.parse(value[87])),
                FlSpot(double.parse(valuet[88]), double.parse(value[88])),
                FlSpot(double.parse(valuet[89]), double.parse(value[89])),
                FlSpot(double.parse(valuet[90]), double.parse(value[90])),
                FlSpot(double.parse(valuet[91]), double.parse(value[91])),
                FlSpot(double.parse(valuet[92]), double.parse(value[92])),
                FlSpot(double.parse(valuet[93]), double.parse(value[93])),
                FlSpot(double.parse(valuet[94]), double.parse(value[94])),
                FlSpot(double.parse(valuet[95]), double.parse(value[95])),
                FlSpot(double.parse(valuet[96]), double.parse(value[96])),
                FlSpot(double.parse(valuet[97]), double.parse(value[97])),
                FlSpot(double.parse(valuet[98]), double.parse(value[98])),
                FlSpot(double.parse(valuet[99]), double.parse(value[99])),
                FlSpot(double.parse(valuet[100]), double.parse(value[100])),
                FlSpot(double.parse(valuet[101]), double.parse(value[101])),
                FlSpot(double.parse(valuet[102]), double.parse(value[102])),
                FlSpot(double.parse(valuet[103]), double.parse(value[103])),
                FlSpot(double.parse(valuet[104]), double.parse(value[104])),
                FlSpot(double.parse(valuet[105]), double.parse(value[105])),
                FlSpot(double.parse(valuet[106]), double.parse(value[106])),
                FlSpot(double.parse(valuet[107]), double.parse(value[107])),
                FlSpot(double.parse(valuet[108]), double.parse(value[108])),
                FlSpot(double.parse(valuet[109]), double.parse(value[109])),
                FlSpot(double.parse(valuet[110]), double.parse(value[110])),
                FlSpot(double.parse(valuet[111]), double.parse(value[111])),
                FlSpot(double.parse(valuet[112]), double.parse(value[112])),
                FlSpot(double.parse(valuet[113]), double.parse(value[113])),
                FlSpot(double.parse(valuet[114]), double.parse(value[114])),
                FlSpot(double.parse(valuet[115]), double.parse(value[115])),
                FlSpot(double.parse(valuet[116]), double.parse(value[116])),
                FlSpot(double.parse(valuet[117]), double.parse(value[117])),
                FlSpot(double.parse(valuet[118]), double.parse(value[118])),
                FlSpot(double.parse(valuet[119]), double.parse(value[119])),
                FlSpot(double.parse(valuet[120]), double.parse(value[120])),
                FlSpot(double.parse(valuet[121]), double.parse(value[121])),
                FlSpot(double.parse(valuet[122]), double.parse(value[122])),
                FlSpot(double.parse(valuet[123]), double.parse(value[123])),
                FlSpot(double.parse(valuet[124]), double.parse(value[124])),
                FlSpot(double.parse(valuet[125]), double.parse(value[125])),
                FlSpot(double.parse(valuet[126]), double.parse(value[126])),
                FlSpot(double.parse(valuet[127]), double.parse(value[127])),
                FlSpot(double.parse(valuet[128]), double.parse(value[128])),
                FlSpot(double.parse(valuet[129]), double.parse(value[129])),
                FlSpot(double.parse(valuet[130]), double.parse(value[130])),
                FlSpot(double.parse(valuet[131]), double.parse(value[131])),
                FlSpot(double.parse(valuet[132]), double.parse(value[132])),
                FlSpot(double.parse(valuet[133]), double.parse(value[133])),
                FlSpot(double.parse(valuet[134]), double.parse(value[134])),
                FlSpot(double.parse(valuet[135]), double.parse(value[135])),
                FlSpot(double.parse(valuet[136]), double.parse(value[136])),
                FlSpot(double.parse(valuet[137]), double.parse(value[137])),
                FlSpot(double.parse(valuet[138]), double.parse(value[138])),
                FlSpot(double.parse(valuet[139]), double.parse(value[139])),
                FlSpot(double.parse(valuet[140]), double.parse(value[140])),
                FlSpot(double.parse(valuet[141]), double.parse(value[141])),
                FlSpot(double.parse(valuet[142]), double.parse(value[142])),
                FlSpot(double.parse(valuet[143]), double.parse(value[143])),
                FlSpot(double.parse(valuet[144]), double.parse(value[144])),
                FlSpot(double.parse(valuet[145]), double.parse(value[145])),
                FlSpot(double.parse(valuet[146]), double.parse(value[146])),
                FlSpot(double.parse(valuet[147]), double.parse(value[147])),
                FlSpot(double.parse(valuet[148]), double.parse(value[148])),
                FlSpot(double.parse(valuet[149]), double.parse(value[149])),
                FlSpot(double.parse(valuet[150]), double.parse(value[150])),
                FlSpot(double.parse(valuet[151]), double.parse(value[151])),
                FlSpot(double.parse(valuet[152]), double.parse(value[152])),
                FlSpot(double.parse(valuet[153]), double.parse(value[153])),
                FlSpot(double.parse(valuet[154]), double.parse(value[154])),
                FlSpot(double.parse(valuet[155]), double.parse(value[155])),
                FlSpot(double.parse(valuet[156]), double.parse(value[156])),
                FlSpot(double.parse(valuet[157]), double.parse(value[157])),
                FlSpot(double.parse(valuet[158]), double.parse(value[158])),
                FlSpot(double.parse(valuet[159]), double.parse(value[159])),
                FlSpot(double.parse(valuet[160]), double.parse(value[160])),
                FlSpot(double.parse(valuet[161]), double.parse(value[161])),
                FlSpot(double.parse(valuet[162]), double.parse(value[162])),
                FlSpot(double.parse(valuet[163]), double.parse(value[163])),
                FlSpot(double.parse(valuet[164]), double.parse(value[164])),
                FlSpot(double.parse(valuet[165]), double.parse(value[165])),
                FlSpot(double.parse(valuet[166]), double.parse(value[166])),
                FlSpot(double.parse(valuet[167]), double.parse(value[167])),
                FlSpot(double.parse(valuet[168]), double.parse(value[168])),
                FlSpot(double.parse(valuet[169]), double.parse(value[169])),
                FlSpot(double.parse(valuet[170]), double.parse(value[170])),
                FlSpot(double.parse(valuet[171]), double.parse(value[171])),
                FlSpot(double.parse(valuet[172]), double.parse(value[172])),
                FlSpot(double.parse(valuet[173]), double.parse(value[173])),
                FlSpot(double.parse(valuet[174]), double.parse(value[174])),
                FlSpot(double.parse(valuet[175]), double.parse(value[175])),
                FlSpot(double.parse(valuet[176]), double.parse(value[176])),
                FlSpot(double.parse(valuet[177]), double.parse(value[177])),
                FlSpot(double.parse(valuet[178]), double.parse(value[178])),
                FlSpot(double.parse(valuet[179]), double.parse(value[179])),
                FlSpot(double.parse(valuet[180]), double.parse(value[180])),
                FlSpot(double.parse(valuet[181]), double.parse(value[181])),
                FlSpot(double.parse(valuet[182]), double.parse(value[182])),
                FlSpot(double.parse(valuet[183]), double.parse(value[183])),
                FlSpot(double.parse(valuet[184]), double.parse(value[184])),
                FlSpot(double.parse(valuet[185]), double.parse(value[185])),
                FlSpot(double.parse(valuet[186]), double.parse(value[186])),
                FlSpot(double.parse(valuet[187]), double.parse(value[187])),
                FlSpot(double.parse(valuet[188]), double.parse(value[188])),
                FlSpot(double.parse(valuet[189]), double.parse(value[189])),
                FlSpot(double.parse(valuet[190]), double.parse(value[190])),
                FlSpot(double.parse(valuet[191]), double.parse(value[191])),
                FlSpot(double.parse(valuet[192]), double.parse(value[192])),
                FlSpot(double.parse(valuet[193]), double.parse(value[193])),
                FlSpot(double.parse(valuet[194]), double.parse(value[194])),
                FlSpot(double.parse(valuet[195]), double.parse(value[195])),
                FlSpot(double.parse(valuet[196]), double.parse(value[196])),
                FlSpot(double.parse(valuet[197]), double.parse(value[197])),
                FlSpot(double.parse(valuet[198]), double.parse(value[198])),
                FlSpot(double.parse(valuet[199]), double.parse(value[199])),
                FlSpot(double.parse(valuet[200]), double.parse(value[200])),
                FlSpot(double.parse(valuet[201]), double.parse(value[201])),
                FlSpot(double.parse(valuet[202]), double.parse(value[202])),
                FlSpot(double.parse(valuet[203]), double.parse(value[203])),
                FlSpot(double.parse(valuet[204]), double.parse(value[204])),
                FlSpot(double.parse(valuet[205]), double.parse(value[205])),
                FlSpot(double.parse(valuet[206]), double.parse(value[206])),
                FlSpot(double.parse(valuet[207]), double.parse(value[207])),
                FlSpot(double.parse(valuet[208]), double.parse(value[208])),
                FlSpot(double.parse(valuet[209]), double.parse(value[209])),
                FlSpot(double.parse(valuet[210]), double.parse(value[210])),
                FlSpot(double.parse(valuet[211]), double.parse(value[211])),
                FlSpot(double.parse(valuet[212]), double.parse(value[212])),
                FlSpot(double.parse(valuet[213]), double.parse(value[213])),
                FlSpot(double.parse(valuet[214]), double.parse(value[214])),
                FlSpot(double.parse(valuet[215]), double.parse(value[215])),
                FlSpot(double.parse(valuet[216]), double.parse(value[216])),
                FlSpot(double.parse(valuet[217]), double.parse(value[217])),
                FlSpot(double.parse(valuet[218]), double.parse(value[218])),
                FlSpot(double.parse(valuet[219]), double.parse(value[219])),
                FlSpot(double.parse(valuet[220]), double.parse(value[220])),
                FlSpot(double.parse(valuet[221]), double.parse(value[221])),
                FlSpot(double.parse(valuet[222]), double.parse(value[222])),
                FlSpot(double.parse(valuet[223]), double.parse(value[223])),
                FlSpot(double.parse(valuet[224]), double.parse(value[224])),
                FlSpot(double.parse(valuet[225]), double.parse(value[225])),
                FlSpot(double.parse(valuet[226]), double.parse(value[226])),
                FlSpot(double.parse(valuet[227]), double.parse(value[227])),
                FlSpot(double.parse(valuet[228]), double.parse(value[228])),
                FlSpot(double.parse(valuet[229]), double.parse(value[229])),
                FlSpot(double.parse(valuet[230]), double.parse(value[230])),
                FlSpot(double.parse(valuet[231]), double.parse(value[231])),
                FlSpot(double.parse(valuet[232]), double.parse(value[232])),
                FlSpot(double.parse(valuet[233]), double.parse(value[233])),
                FlSpot(double.parse(valuet[234]), double.parse(value[234])),
                FlSpot(double.parse(valuet[235]), double.parse(value[235])),
                FlSpot(double.parse(valuet[236]), double.parse(value[236])),
                FlSpot(double.parse(valuet[237]), double.parse(value[237])),
                FlSpot(double.parse(valuet[238]), double.parse(value[238])),
                FlSpot(double.parse(valuet[239]), double.parse(value[239])),
                FlSpot(double.parse(valuet[240]), double.parse(value[240])),
                FlSpot(double.parse(valuet[241]), double.parse(value[241])),
              ],
              isCurved: true,
              colors: GradientColors.blue,
              barWidth: 5,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: false,
                colors: GradientColors.lightBlue,
              ),
            ),
          ],
        ),
      );
    } else {
      return LineChart(
        LineChartData(
          minX: 0,
          maxX: 345,
          minY: 0,
          maxY: 20000,
          titlesData: LineTitles.getTitleData(),
          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 0.2,
              );
            },
            drawVerticalLine: true,
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 0.2,
              );
            },
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: const Color(0xff37434d), width: 1),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(double.parse(valuet[0]), double.parse(value[0])),
                FlSpot(double.parse(valuet[1]), double.parse(value[1])),
                FlSpot(double.parse(valuet[2]), double.parse(value[2])),
                FlSpot(double.parse(valuet[3]), double.parse(value[3])),
                FlSpot(double.parse(valuet[4]), double.parse(value[4])),
                FlSpot(double.parse(valuet[5]), double.parse(value[5])),
                FlSpot(double.parse(valuet[6]), double.parse(value[6])),
                FlSpot(double.parse(valuet[7]), double.parse(value[7])),
                FlSpot(double.parse(valuet[8]), double.parse(value[8])),
                FlSpot(double.parse(valuet[9]), double.parse(value[9])),
                FlSpot(double.parse(valuet[10]), double.parse(value[10])),
                FlSpot(double.parse(valuet[11]), double.parse(value[11])),
                FlSpot(double.parse(valuet[12]), double.parse(value[12])),
                FlSpot(double.parse(valuet[13]), double.parse(value[13])),
                FlSpot(double.parse(valuet[14]), double.parse(value[14])),
                FlSpot(double.parse(valuet[15]), double.parse(value[15])),
                FlSpot(double.parse(valuet[16]), double.parse(value[16])),
                FlSpot(double.parse(valuet[17]), double.parse(value[17])),
                FlSpot(double.parse(valuet[18]), double.parse(value[18])),
                FlSpot(double.parse(valuet[19]), double.parse(value[19])),
                FlSpot(double.parse(valuet[20]), double.parse(value[20])),
                FlSpot(double.parse(valuet[21]), double.parse(value[21])),
                FlSpot(double.parse(valuet[22]), double.parse(value[22])),
                FlSpot(double.parse(valuet[23]), double.parse(value[23])),
                FlSpot(double.parse(valuet[24]), double.parse(value[24])),
                FlSpot(double.parse(valuet[25]), double.parse(value[25])),
                FlSpot(double.parse(valuet[26]), double.parse(value[26])),
                FlSpot(double.parse(valuet[27]), double.parse(value[27])),
                FlSpot(double.parse(valuet[28]), double.parse(value[28])),
                FlSpot(double.parse(valuet[29]), double.parse(value[29])),
                FlSpot(double.parse(valuet[30]), double.parse(value[30])),
                FlSpot(double.parse(valuet[31]), double.parse(value[31])),
                FlSpot(double.parse(valuet[32]), double.parse(value[32])),
                FlSpot(double.parse(valuet[33]), double.parse(value[33])),
                FlSpot(double.parse(valuet[34]), double.parse(value[34])),
                FlSpot(double.parse(valuet[35]), double.parse(value[35])),
                FlSpot(double.parse(valuet[36]), double.parse(value[36])),
                FlSpot(double.parse(valuet[37]), double.parse(value[37])),
                FlSpot(double.parse(valuet[38]), double.parse(value[38])),
                FlSpot(double.parse(valuet[39]), double.parse(value[39])),
                FlSpot(double.parse(valuet[40]), double.parse(value[40])),
                FlSpot(double.parse(valuet[41]), double.parse(value[41])),
                FlSpot(double.parse(valuet[42]), double.parse(value[42])),
                FlSpot(double.parse(valuet[43]), double.parse(value[43])),
                FlSpot(double.parse(valuet[44]), double.parse(value[44])),
                FlSpot(double.parse(valuet[45]), double.parse(value[45])),
                FlSpot(double.parse(valuet[46]), double.parse(value[46])),
                FlSpot(double.parse(valuet[47]), double.parse(value[47])),
                FlSpot(double.parse(valuet[48]), double.parse(value[48])),
                FlSpot(double.parse(valuet[49]), double.parse(value[49])),
                FlSpot(double.parse(valuet[50]), double.parse(value[50])),
                FlSpot(double.parse(valuet[51]), double.parse(value[51])),
                FlSpot(double.parse(valuet[52]), double.parse(value[52])),
                FlSpot(double.parse(valuet[53]), double.parse(value[53])),
                FlSpot(double.parse(valuet[54]), double.parse(value[54])),
                FlSpot(double.parse(valuet[55]), double.parse(value[55])),
                FlSpot(double.parse(valuet[56]), double.parse(value[56])),
                FlSpot(double.parse(valuet[57]), double.parse(value[57])),
                FlSpot(double.parse(valuet[58]), double.parse(value[58])),
                FlSpot(double.parse(valuet[59]), double.parse(value[59])),
                FlSpot(double.parse(valuet[60]), double.parse(value[60])),
                FlSpot(double.parse(valuet[61]), double.parse(value[61])),
                FlSpot(double.parse(valuet[62]), double.parse(value[62])),
                FlSpot(double.parse(valuet[63]), double.parse(value[63])),
                FlSpot(double.parse(valuet[64]), double.parse(value[64])),
                FlSpot(double.parse(valuet[65]), double.parse(value[65])),
                FlSpot(double.parse(valuet[66]), double.parse(value[66])),
                FlSpot(double.parse(valuet[67]), double.parse(value[67])),
                FlSpot(double.parse(valuet[68]), double.parse(value[68])),
                FlSpot(double.parse(valuet[69]), double.parse(value[69])),
                FlSpot(double.parse(valuet[70]), double.parse(value[70])),
                FlSpot(double.parse(valuet[71]), double.parse(value[71])),
                FlSpot(double.parse(valuet[72]), double.parse(value[72])),
                FlSpot(double.parse(valuet[73]), double.parse(value[73])),
                FlSpot(double.parse(valuet[74]), double.parse(value[74])),
                FlSpot(double.parse(valuet[75]), double.parse(value[75])),
                FlSpot(double.parse(valuet[76]), double.parse(value[76])),
                FlSpot(double.parse(valuet[77]), double.parse(value[77])),
                FlSpot(double.parse(valuet[78]), double.parse(value[78])),
                FlSpot(double.parse(valuet[79]), double.parse(value[79])),
                FlSpot(double.parse(valuet[80]), double.parse(value[80])),
                FlSpot(double.parse(valuet[81]), double.parse(value[81])),
                FlSpot(double.parse(valuet[82]), double.parse(value[82])),
                FlSpot(double.parse(valuet[83]), double.parse(value[83])),
                FlSpot(double.parse(valuet[84]), double.parse(value[84])),
                FlSpot(double.parse(valuet[85]), double.parse(value[85])),
                FlSpot(double.parse(valuet[86]), double.parse(value[86])),
                FlSpot(double.parse(valuet[87]), double.parse(value[87])),
                FlSpot(double.parse(valuet[88]), double.parse(value[88])),
                FlSpot(double.parse(valuet[89]), double.parse(value[89])),
                FlSpot(double.parse(valuet[90]), double.parse(value[90])),
                FlSpot(double.parse(valuet[91]), double.parse(value[91])),
                FlSpot(double.parse(valuet[92]), double.parse(value[92])),
                FlSpot(double.parse(valuet[93]), double.parse(value[93])),
                FlSpot(double.parse(valuet[94]), double.parse(value[94])),
                FlSpot(double.parse(valuet[95]), double.parse(value[95])),
                FlSpot(double.parse(valuet[96]), double.parse(value[96])),
                FlSpot(double.parse(valuet[97]), double.parse(value[97])),
                FlSpot(double.parse(valuet[98]), double.parse(value[98])),
                FlSpot(double.parse(valuet[99]), double.parse(value[99])),
                FlSpot(double.parse(valuet[100]), double.parse(value[100])),
                FlSpot(double.parse(valuet[101]), double.parse(value[101])),
                FlSpot(double.parse(valuet[102]), double.parse(value[102])),
                FlSpot(double.parse(valuet[103]), double.parse(value[103])),
                FlSpot(double.parse(valuet[104]), double.parse(value[104])),
                FlSpot(double.parse(valuet[105]), double.parse(value[105])),
                FlSpot(double.parse(valuet[106]), double.parse(value[106])),
                FlSpot(double.parse(valuet[107]), double.parse(value[107])),
                FlSpot(double.parse(valuet[108]), double.parse(value[108])),
                FlSpot(double.parse(valuet[109]), double.parse(value[109])),
                FlSpot(double.parse(valuet[110]), double.parse(value[110])),
                FlSpot(double.parse(valuet[111]), double.parse(value[111])),
                FlSpot(double.parse(valuet[112]), double.parse(value[112])),
                FlSpot(double.parse(valuet[113]), double.parse(value[113])),
                FlSpot(double.parse(valuet[114]), double.parse(value[114])),
                FlSpot(double.parse(valuet[115]), double.parse(value[115])),
                FlSpot(double.parse(valuet[116]), double.parse(value[116])),
                FlSpot(double.parse(valuet[117]), double.parse(value[117])),
                FlSpot(double.parse(valuet[118]), double.parse(value[118])),
                FlSpot(double.parse(valuet[119]), double.parse(value[119])),
                FlSpot(double.parse(valuet[120]), double.parse(value[120])),
                FlSpot(double.parse(valuet[121]), double.parse(value[121])),
                FlSpot(double.parse(valuet[122]), double.parse(value[122])),
                FlSpot(double.parse(valuet[123]), double.parse(value[123])),
                FlSpot(double.parse(valuet[124]), double.parse(value[124])),
                FlSpot(double.parse(valuet[125]), double.parse(value[125])),
                FlSpot(double.parse(valuet[126]), double.parse(value[126])),
                FlSpot(double.parse(valuet[127]), double.parse(value[127])),
                FlSpot(double.parse(valuet[128]), double.parse(value[128])),
                FlSpot(double.parse(valuet[129]), double.parse(value[129])),
                FlSpot(double.parse(valuet[130]), double.parse(value[130])),
                FlSpot(double.parse(valuet[131]), double.parse(value[131])),
                FlSpot(double.parse(valuet[132]), double.parse(value[132])),
                FlSpot(double.parse(valuet[133]), double.parse(value[133])),
                FlSpot(double.parse(valuet[134]), double.parse(value[134])),
                FlSpot(double.parse(valuet[135]), double.parse(value[135])),
                FlSpot(double.parse(valuet[136]), double.parse(value[136])),
                FlSpot(double.parse(valuet[137]), double.parse(value[137])),
                FlSpot(double.parse(valuet[138]), double.parse(value[138])),
                FlSpot(double.parse(valuet[139]), double.parse(value[139])),
                FlSpot(double.parse(valuet[140]), double.parse(value[140])),
                FlSpot(double.parse(valuet[141]), double.parse(value[141])),
                FlSpot(double.parse(valuet[142]), double.parse(value[142])),
                FlSpot(double.parse(valuet[143]), double.parse(value[143])),
                FlSpot(double.parse(valuet[144]), double.parse(value[144])),
                FlSpot(double.parse(valuet[145]), double.parse(value[145])),
                FlSpot(double.parse(valuet[146]), double.parse(value[146])),
                FlSpot(double.parse(valuet[147]), double.parse(value[147])),
                FlSpot(double.parse(valuet[148]), double.parse(value[148])),
                FlSpot(double.parse(valuet[149]), double.parse(value[149])),
                FlSpot(double.parse(valuet[150]), double.parse(value[150])),
                FlSpot(double.parse(valuet[151]), double.parse(value[151])),
                FlSpot(double.parse(valuet[152]), double.parse(value[152])),
                FlSpot(double.parse(valuet[153]), double.parse(value[153])),
                FlSpot(double.parse(valuet[154]), double.parse(value[154])),
                FlSpot(double.parse(valuet[155]), double.parse(value[155])),
                FlSpot(double.parse(valuet[156]), double.parse(value[156])),
                FlSpot(double.parse(valuet[157]), double.parse(value[157])),
                FlSpot(double.parse(valuet[158]), double.parse(value[158])),
                FlSpot(double.parse(valuet[159]), double.parse(value[159])),
                FlSpot(double.parse(valuet[160]), double.parse(value[160])),
                FlSpot(double.parse(valuet[161]), double.parse(value[161])),
                FlSpot(double.parse(valuet[162]), double.parse(value[162])),
                FlSpot(double.parse(valuet[163]), double.parse(value[163])),
                FlSpot(double.parse(valuet[164]), double.parse(value[164])),
                FlSpot(double.parse(valuet[165]), double.parse(value[165])),
                FlSpot(double.parse(valuet[166]), double.parse(value[166])),
                FlSpot(double.parse(valuet[167]), double.parse(value[167])),
                FlSpot(double.parse(valuet[168]), double.parse(value[168])),
                FlSpot(double.parse(valuet[169]), double.parse(value[169])),
                FlSpot(double.parse(valuet[170]), double.parse(value[170])),
                FlSpot(double.parse(valuet[171]), double.parse(value[171])),
                FlSpot(double.parse(valuet[172]), double.parse(value[172])),
                FlSpot(double.parse(valuet[173]), double.parse(value[173])),
                FlSpot(double.parse(valuet[174]), double.parse(value[174])),
                FlSpot(double.parse(valuet[175]), double.parse(value[175])),
                FlSpot(double.parse(valuet[176]), double.parse(value[176])),
                FlSpot(double.parse(valuet[177]), double.parse(value[177])),
                FlSpot(double.parse(valuet[178]), double.parse(value[178])),
                FlSpot(double.parse(valuet[179]), double.parse(value[179])),
                FlSpot(double.parse(valuet[180]), double.parse(value[180])),
                FlSpot(double.parse(valuet[181]), double.parse(value[181])),
                FlSpot(double.parse(valuet[182]), double.parse(value[182])),
                FlSpot(double.parse(valuet[183]), double.parse(value[183])),
                FlSpot(double.parse(valuet[184]), double.parse(value[184])),
                FlSpot(double.parse(valuet[185]), double.parse(value[185])),
                FlSpot(double.parse(valuet[186]), double.parse(value[186])),
                FlSpot(double.parse(valuet[187]), double.parse(value[187])),
                FlSpot(double.parse(valuet[188]), double.parse(value[188])),
                FlSpot(double.parse(valuet[189]), double.parse(value[189])),
                FlSpot(double.parse(valuet[190]), double.parse(value[190])),
                FlSpot(double.parse(valuet[191]), double.parse(value[191])),
                FlSpot(double.parse(valuet[192]), double.parse(value[192])),
                FlSpot(double.parse(valuet[193]), double.parse(value[193])),
                FlSpot(double.parse(valuet[194]), double.parse(value[194])),
                FlSpot(double.parse(valuet[195]), double.parse(value[195])),
                FlSpot(double.parse(valuet[196]), double.parse(value[196])),
                FlSpot(double.parse(valuet[197]), double.parse(value[197])),
                FlSpot(double.parse(valuet[198]), double.parse(value[198])),
                FlSpot(double.parse(valuet[199]), double.parse(value[199])),
                FlSpot(double.parse(valuet[200]), double.parse(value[200])),
                FlSpot(double.parse(valuet[201]), double.parse(value[201])),
                FlSpot(double.parse(valuet[202]), double.parse(value[202])),
                FlSpot(double.parse(valuet[203]), double.parse(value[203])),
                FlSpot(double.parse(valuet[204]), double.parse(value[204])),
                FlSpot(double.parse(valuet[205]), double.parse(value[205])),
                FlSpot(double.parse(valuet[206]), double.parse(value[206])),
                FlSpot(double.parse(valuet[207]), double.parse(value[207])),
                FlSpot(double.parse(valuet[208]), double.parse(value[208])),
                FlSpot(double.parse(valuet[209]), double.parse(value[209])),
                FlSpot(double.parse(valuet[210]), double.parse(value[210])),
                FlSpot(double.parse(valuet[211]), double.parse(value[211])),
                FlSpot(double.parse(valuet[212]), double.parse(value[212])),
                FlSpot(double.parse(valuet[213]), double.parse(value[213])),
                FlSpot(double.parse(valuet[214]), double.parse(value[214])),
                FlSpot(double.parse(valuet[215]), double.parse(value[215])),
                FlSpot(double.parse(valuet[216]), double.parse(value[216])),
                FlSpot(double.parse(valuet[217]), double.parse(value[217])),
                FlSpot(double.parse(valuet[218]), double.parse(value[218])),
                FlSpot(double.parse(valuet[219]), double.parse(value[219])),
                FlSpot(double.parse(valuet[220]), double.parse(value[220])),
                FlSpot(double.parse(valuet[221]), double.parse(value[221])),
                FlSpot(double.parse(valuet[222]), double.parse(value[222])),
                FlSpot(double.parse(valuet[223]), double.parse(value[223])),
                FlSpot(double.parse(valuet[224]), double.parse(value[224])),
                FlSpot(double.parse(valuet[225]), double.parse(value[225])),
                FlSpot(double.parse(valuet[226]), double.parse(value[226])),
                FlSpot(double.parse(valuet[227]), double.parse(value[227])),
                FlSpot(double.parse(valuet[228]), double.parse(value[228])),
                FlSpot(double.parse(valuet[229]), double.parse(value[229])),
                FlSpot(double.parse(valuet[230]), double.parse(value[230])),
                FlSpot(double.parse(valuet[231]), double.parse(value[231])),
                FlSpot(double.parse(valuet[232]), double.parse(value[232])),
                FlSpot(double.parse(valuet[233]), double.parse(value[233])),
                FlSpot(double.parse(valuet[234]), double.parse(value[234])),
                FlSpot(double.parse(valuet[235]), double.parse(value[235])),
                FlSpot(double.parse(valuet[236]), double.parse(value[236])),
                FlSpot(double.parse(valuet[237]), double.parse(value[237])),
                FlSpot(double.parse(valuet[238]), double.parse(value[238])),
                FlSpot(double.parse(valuet[239]), double.parse(value[239])),
                FlSpot(double.parse(valuet[240]), double.parse(value[240])),
                FlSpot(double.parse(valuet[241]), double.parse(value[241])),
                FlSpot(double.parse(valuet[242]), double.parse(value[242])),
                FlSpot(243, double.parse(value[243])),
                FlSpot(244, double.parse(value[244])),
                FlSpot(245, double.parse(value[245])),
                FlSpot(246, double.parse(value[246])),
                FlSpot(247, double.parse(value[247])),
                FlSpot(248, double.parse(value[248])),
                FlSpot(249, double.parse(value[249])),
                FlSpot(250, double.parse(value[250])),
                FlSpot(251, double.parse(value[251])),
                FlSpot(252, double.parse(value[252])),
                FlSpot(253, double.parse(value[253])),
                FlSpot(254, double.parse(value[254])),
                FlSpot(255, double.parse(value[255])),
                FlSpot(256, double.parse(value[256])),
                FlSpot(257, double.parse(value[257])),
                FlSpot(258, double.parse(value[258])),
                FlSpot(259, double.parse(value[259])),
                FlSpot(260, double.parse(value[260])),
                FlSpot(261, double.parse(value[261])),
                FlSpot(262, double.parse(value[262])),
                FlSpot(263, double.parse(value[263])),
                FlSpot(264, double.parse(value[264])),
                FlSpot(265, double.parse(value[265])),
                FlSpot(266, double.parse(value[266])),
                FlSpot(267, double.parse(value[267])),
                FlSpot(268, double.parse(value[268])),
                FlSpot(269, double.parse(value[269])),
                FlSpot(270, double.parse(value[270])),
                FlSpot(271, double.parse(value[271])),
                FlSpot(272, double.parse(value[272])),
                FlSpot(273, double.parse(value[273])),
                FlSpot(274, double.parse(value[274])),
                FlSpot(275, double.parse(value[275])),
                FlSpot(276, double.parse(value[276])),
                FlSpot(277, double.parse(value[277])),
                FlSpot(278, double.parse(value[278])),
                FlSpot(279, double.parse(value[279])),
                FlSpot(280, double.parse(value[280])),
                FlSpot(281, double.parse(value[281])),
                FlSpot(282, double.parse(value[282])),
                FlSpot(283, double.parse(value[283])),
                FlSpot(284, double.parse(value[284])),
                FlSpot(285, double.parse(value[285])),
                FlSpot(286, double.parse(value[286])),
                FlSpot(287, double.parse(value[287])),
                FlSpot(288, double.parse(value[288])),
                FlSpot(289, double.parse(value[289])),
                FlSpot(290, double.parse(value[290])),
                FlSpot(291, double.parse(value[291])),
                FlSpot(292, double.parse(value[292])),
                FlSpot(293, double.parse(value[293])),
                FlSpot(294, double.parse(value[294])),
                FlSpot(295, double.parse(value[295])),
                FlSpot(296, double.parse(value[296])),
                FlSpot(297, double.parse(value[297])),
                FlSpot(298, double.parse(value[298])),
                FlSpot(299, double.parse(value[299])),
                FlSpot(300, double.parse(value[300])),
                FlSpot(301, double.parse(value[301])),
                FlSpot(302, double.parse(value[302])),
                FlSpot(303, double.parse(value[303])),
                FlSpot(304, double.parse(value[304])),
                FlSpot(305, double.parse(value[305])),
                FlSpot(306, double.parse(value[306])),
                FlSpot(307, double.parse(value[307])),
                FlSpot(308, double.parse(value[308])),
                FlSpot(309, double.parse(value[309])),
                FlSpot(310, double.parse(value[310])),
                FlSpot(311, double.parse(value[311])),
                FlSpot(312, double.parse(value[312])),
                FlSpot(313, double.parse(value[313])),
                FlSpot(314, double.parse(value[314])),
                FlSpot(315, double.parse(value[315])),
                FlSpot(316, double.parse(value[316])),
                FlSpot(317, double.parse(value[317])),
                FlSpot(318, double.parse(value[318])),
                FlSpot(319, double.parse(value[319])),
                FlSpot(320, double.parse(value[320])),
                FlSpot(321, double.parse(value[321])),
                FlSpot(322, double.parse(value[322])),
                FlSpot(323, double.parse(value[323])),
                FlSpot(324, double.parse(value[324])),
                FlSpot(325, double.parse(value[325])),
                FlSpot(326, double.parse(value[326])),
                FlSpot(327, double.parse(value[327])),
                FlSpot(328, double.parse(value[328])),
                FlSpot(329, double.parse(value[329])),
                FlSpot(330, double.parse(value[330])),
                FlSpot(331, double.parse(value[331])),
                FlSpot(332, double.parse(value[332])),
                FlSpot(333, double.parse(value[333])),
                FlSpot(334, double.parse(value[334])),
                FlSpot(335, double.parse(value[335])),
                FlSpot(336, double.parse(value[336])),
                FlSpot(337, double.parse(value[337])),
                FlSpot(338, double.parse(value[338])),
                FlSpot(339, double.parse(value[339])),
                FlSpot(340, double.parse(value[340])),
                FlSpot(341, double.parse(value[341])),
                FlSpot(342, double.parse(value[342])),
                FlSpot(343, double.parse(value[343])),
              ],
              isCurved: true,
              colors: GradientColors.blue,
              barWidth: 5,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: false,
                colors: GradientColors.lightBlue,
              ),
            ),
          ],
        ),
      );
    }
  }

  int _counter = 0;
  File _imageFile;
  ScreenshotController screenshotController = ScreenshotController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final CarouselController _buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        child: new Center(
          child: Column(
            children: <Widget>[
              Container(
                  height: 120,
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FutureBuilder(
                              future: DefaultAssetBundle.of(context)
                                  .loadString("assets/data.json"),
                              builder: (context, snapshot) {
                                var mydata =
                                    json.decode(snapshot.data.toString());
                                var timeval = mydata["time"];
                                var listval = mydata["val"];
                                var time = mydata["last_active"];
                                var time1 = time.split("T");
                                var timehour = time1[1].split(":");
                                var timeday = time1[0].split("-");
                                DateTime now = DateTime.now();
                                String formattedDatedate =
                                    DateFormat('dd').format(now);
                                String formattedDatehour =
                                    DateFormat('kk').format(now);
                                String formattedDateyear =
                                    DateFormat('yyyy').format(now);
                                int year_data = ((int.parse(timeday[0])) -
                                        (int.parse(formattedDateyear)))
                                    .abs();
                                int date_data = ((int.parse(timeday[2])) -
                                        (int.parse(formattedDatedate)))
                                    .abs();
                                int hour_data = ((int.parse(timehour[0])) -
                                        (int.parse(formattedDatehour)))
                                    .abs();
                                print(hour_data);
                                var listdata = [];
                                var listdata1 = [];
                                var listdata2 = [];
                                var vals = [];
                                var vale = [];
                                var valdata = [];
                                listdata1 = listval.split("[");
                                listdata2 = listdata1[1].toString().split("]");
                                listdata = listdata2[0].toString().split(",");
                                value = listdata;
                                var listtime = [];
                                var listtime1 = [];
                                var listtime2 = [];
                                listtime1 = timeval.split("[");
                                listtime2 = listtime1[1].toString().split("]");
                                listtime = listtime2[0].toString().split(",");
                                valuet = listtime;
                                print(value.length);
                                print(valuet.length);
                                return Container(
                                    alignment: Alignment.topLeft,
                                    child: Column(children: <Widget>[
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(mydata["name"],
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                            'Last Active: ' +
                                                date_data.toString() +
                                                ' Days and ' +
                                                hour_data.toString() +
                                                ' Hours Ago',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(mydata["id"],
                                              style: TextStyle(
                                                  //fontSize: 10,
                                                  color: Colors.black
                                                  //fontWeight: FontWeight.w700,
                                                  )),
                                        ),
                                      ),
                                    ]));
                              })
                        ],
                      ),
                    ),
                  )),
              Container(
                width: double.infinity,
                child: Screenshot(
                  controller: screenshotController,
                  child: CarouselSlider(
                    carouselController: _buttonCarouselController,
                    options: CarouselOptions(
                      height: 430.0,
                      viewportFraction: 1,
                    ),
                    items: [1, 2, 3, 4].map((status) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(05),
                              ),
                              color: Colors.blue.shade100,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: _status(status),
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Wrap(
                  children: <Widget>[
                    new SizedBox(
                      width: 10.0,
                      child: FlatButton(),
                    ),
                    new SizedBox(
                      width: 70.0,
                      child: FlatButton(
                        color: Colors.blue.shade200,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.white)),
                        onPressed: () =>
                            _buttonCarouselController..jumpToPage(0),
                        child: Text(
                          '1D',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 70.0,
                      child: FlatButton(
                        color: Colors.blue.shade200,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.white)),
                        onPressed: () =>
                            _buttonCarouselController..jumpToPage(1),
                        child: Text(
                          '1W',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 70.0,
                      child: FlatButton(
                        color: Colors.blue.shade200,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.white)),
                        onPressed: () =>
                            _buttonCarouselController..jumpToPage(2),
                        child: Text(
                          '1M',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 70.0,
                      child: FlatButton(
                        color: Colors.blue.shade200,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.white)),
                        onPressed: () =>
                            _buttonCarouselController..jumpToPage(3),
                        child: Text(
                          'Max',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    new SizedBox(
                        width: MediaQuery.of(context).size.width < 450
                            ? MediaQuery.of(context).size.width * 0.3
                            : MediaQuery.of(context).size.width * 0.7,
                        child: FlatButton()),
                    new SizedBox(
                      width: 60.0,
                      child: FlatButton(
                        color: Colors.blue.shade200,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(
                              color: Colors.white,
                            )),
                        onPressed: () async {
                          await Permission.storage.request().isGranted;
                          _incrementCounter();
                          _imageFile = null;
                          screenshotController
                              .capture(delay: Duration(milliseconds: 10))
                              .then((File image) async {
                            //print("Capture Done");
                            setState(() {
                              _imageFile = image;
                            });
                            final result = await ImageGallerySaver.saveImage(
                                image.readAsBytesSync());
                            print("File Saved to Gallery");
                          }).catchError((onError) {
                            print(onError);
                          });
                        },
                        child: Icon(Icons.download_outlined),
                      ),
                    ),

                    // ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Wrap(
                  children: <Widget>[
                    new SizedBox(
                      width: 10.0,
                      child: FlatButton(),
                    ),
                    ElevatedButton(
                      onPressed: () => _buttonCarouselController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear),
                      child: Icon(Icons.arrow_back_rounded),
                    ),
                    new SizedBox(
                      width: 5.0,
                      child: FlatButton(),
                    ),
                    ElevatedButton(
                      onPressed: () => _buttonCarouselController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear),
                      child: Icon(Icons.arrow_forward_rounded),
                    ),
                    new SizedBox(
                        width: MediaQuery.of(context).size.width < 450
                            ? MediaQuery.of(context).size.width * 0.45
                            : MediaQuery.of(context).size.width * 0.822,
                        child: FlatButton()),
                    new SizedBox(
                      width: 60.0,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Icon(Icons.exit_to_app_rounded),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _saved(File image) async {
    final result = await ImageGallerySaver.saveImage(image.readAsBytesSync());
    print("File Saved to the Internal Storage");
  }
}

class User {
  final String name;
  final String id;

  // ignore: non_constant_identifier_names
  final String last_active;
  final String val;
  final String time;

  User(this.name, this.id, this.last_active, this.val, this.time);
}
