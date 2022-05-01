import 'package:final_fit/constants.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartWeigth extends StatelessWidget {
  final double width;
  final double heigth;

  const LineChartWeigth({
    Key? key,
    required this.width,
    required this.heigth,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heigth,
      child: Column(
        children: <Widget>[
          Container(
            width: width,
            height: 30,
            child: Text("Tu progreso!",
            textAlign: TextAlign.center,
             style: TextStyle(
               color: Colors.white, 
               fontSize: 18, 
               fontWeight: FontWeight.w600
               ),
               ),
          ),
          Container(
            width: width,
            height: heigth - 75,
            child: LineChart(
              LineChartData(
                backgroundColor: Colors.transparent,
                minX: 0,
                maxX: 5,
                minY: 0,
                maxY: 200,
                titlesData: LineTitles.getTitleData(),
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  getDrawingHorizontalLine: (value){
                    return FlLine(
                      color: GrayColor,
                      strokeWidth: 1,
                    );
                  }
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    isCurved: true,
                    barWidth: 3,
                    dotData: FlDotData(show: true),
                    color: GoldColor,
                    spots: [
                      FlSpot(1, 120),
                      FlSpot(2, 130),
                      FlSpot(3, 135),
                      FlSpot(4, 138),
                    ]
                  ),
                ],

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Container(
              width: 120,
              height: 30,
              decoration: BoxDecoration(
                color: GoldColor,
                borderRadius: BorderRadius.all(Radius.circular(15),
                ),
              ),
              child: TextButton(
                child: Text("Ver más"),
                style: TextButton.styleFrom(
                  primary: Colors.black87,
                  backgroundColor: Colors.transparent,
                ),
                onPressed: (){ print("detalle de estado del cuerpo");},
                ),
              ),
          ),
        ],
      ),
    );
  }
}


class LineTitles{
  static getTitleData() => FlTitlesData(
    show: true,
    topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
    rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
    bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
    leftTitles: AxisTitles(
      drawBehindEverything: true,
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 50,
        // interval: 20,
        getTitlesWidget: (value,meta){
          
          if(value == 0){
            return Text(" ", textAlign: TextAlign.center ,);
          }else{
            var value_int = value.toInt();
            return Text("$value_int"+"Kg", textAlign: TextAlign.center , style: TextStyle(color: Colors.white, fontWeight: FontWeight.w100,),);
          }
        },
      ),
    )
  );
}