import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:shablon_v1/widgets/adaptive_components-0.0.7/adaptive_components.dart';
import 'package:shablon_v1/widgets/indicator.dart';

class PieChart1 extends StatefulWidget {
  const PieChart1({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PieChart1State();
}

class PieChart1State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AdaptiveColumn(
      children: [
        AdaptiveContainer(
          columnSpan: 5,
          child: Container(
            height: 300,
            child: PieChart(
              PieChartData(
                  pieTouchData: PieTouchData(
                      touchCallback: (FlTouchEvent event, pieTouchResponse) {
                    setState(() {
                      if (!event.isInterestedForInteractions ||
                          pieTouchResponse == null ||
                          pieTouchResponse.touchedSection == null) {
                        touchedIndex = -1;
                        return;
                      }
                      touchedIndex =
                          pieTouchResponse.touchedSection!.touchedSectionIndex;
                    });
                  }),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: showingSections()),
            ),
          ),
        ),
        AdaptiveContainer(
          columnSpan: 5,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Indicator(
                color: Color(0xff0293ee),
                text:
                    'База действующих производителей комбикормов для сельскохозяйственных животных (кол. компаний)',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Color(0xfff8b250),
                text:
                    'База действующих птицеводческих хозяйств (кол. компаний)',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Color(0xff845bef),
                text:
                    'База действующих свиноводческих хозяйств (кол. компаний)',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Color(0xff13d38e),
                text:
                    'База хозяйств, занимающихся разведением КРС молочного (мясомолочного) направления (кол. компаний)',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Color.fromARGB(255, 185, 211, 19),
                text:
                    'База хозяйств, занимающихся разведением КРС мясного направления (кол. компаний)',
                isSquare: true,
              ),
            ],
          ),
        ),
        AdaptiveContainer(
          columnSpan: 12,
          child: Container(),
        )
      ],
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(5, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 563,
            title: '563',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 655,
            title: '655',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 372,
            title: '372',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: 3000,
            title: '3 000',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 4:
          return PieChartSectionData(
            color: Color.fromARGB(255, 185, 211, 19),
            value: 307,
            title: '307',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          throw Error();
      }
    });
  }
}
