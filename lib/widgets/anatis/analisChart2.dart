import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shablon_v1/widgets/adaptive_components-0.0.7/adaptive_components.dart';
import 'package:shablon_v1/widgets/indicator.dart';

class _LineChart extends StatelessWidget {
  const _LineChart({required this.isShowingMainData});

  final bool isShowingMainData;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      sampleData1,
      swapAnimationDuration: const Duration(milliseconds: 250),
    );
  }

  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        maxX: 6,
        maxY: 4,
        minY: 0,
      );
  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
        lineChartBarData1_2,
      ];

  LineTouchData get lineTouchData2 => LineTouchData(
        enabled: false,
      );

  FlTitlesData get titlesData2 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff75729e),
      fontWeight: FontWeight.bold,
      fontSize: 12,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '0,5т';
        break;
      case 2:
        text = '1т';
        break;
      case 3:
        text = '1,5т';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 25,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff72719b),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('2016', style: style);
        break;
      case 2:
        text = const Text('2017', style: style);
        break;
      case 3:
        text = const Text('2018', style: style);
        break;
      case 4:
        text = const Text('2019', style: style);
        break;
      case 5:
        text = const Text('2020', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(color: Color(0xff4e4965), width: 4),
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        color: const Color(0xff4af699),
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 0.67),
          FlSpot(2, 0.23),
          FlSpot(3, 2.56),
          FlSpot(4, 2.62),
          FlSpot(5, 1.38),
        ],
      );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
        isCurved: false,
        color: const Color(0xffaa4cfc),
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(
          show: false,
          color: const Color(0x00aa4cfc),
        ),
        spots: const [
          FlSpot(1, 0.4),
          FlSpot(2, 0.3),
          FlSpot(3, 3.1),
          FlSpot(4, 0.6),
          FlSpot(5, 0.47),
        ],
      );
}

class AnalisPieChart2 extends StatefulWidget {
  const AnalisPieChart2({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AnalisPieChart2State();
}

class AnalisPieChart2State extends State<AnalisPieChart2> {
  late bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveColumn(
      children: [
        AdaptiveContainer(
          columnSpan: 12,
          child: Center(
              child: Text(
            'Объем рынка итаконовой кислоты в России в 2016-2020 г.',
            textAlign: TextAlign.center,
            style: GoogleFonts.getFont(
              'Comfortaa',
              fontSize: 14,
              color: Color.fromARGB(157, 0, 0, 0),
            ),
          )),
        ),
        AdaptiveContainer(
          columnSpan: 12,
          child: Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0, left: 6.0),
              child: _LineChart(isShowingMainData: isShowingMainData),
            ),
          ),
        ),
        AdaptiveContainer(
          columnSpan: 12,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Indicator(
                color: Color(0xff4af699),
                text: 'Объем рынка, в т',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Color(0xffaa4cfc),
                text: 'Темп прироста, в %',
                isSquare: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
