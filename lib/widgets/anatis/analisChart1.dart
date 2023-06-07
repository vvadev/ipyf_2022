import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shablon_v1/widgets/adaptive_components-0.0.7/adaptive_components.dart';
import 'package:shablon_v1/widgets/indicator.dart';

class AnalisPieChart1 extends StatefulWidget {
  const AnalisPieChart1({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AnalisPieChart1State();
}

class AnalisPieChart1State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AdaptiveColumn(
      children: [
        AdaptiveContainer(
          columnSpan: 12,
          child: Center(
              child: Text(
            'Доли производителей итаконовой кислоты в объеме рынка в 2020 г., % от стоимостного объема.',
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
          columnSpan: 12,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Indicator(
                color: Color(0xff0293ee),
                text: 'Sigma-Aldrich',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Color(0xfff8b250),
                text: 'ZHEJIANG, GUOGUANG, BIOCHEMISTRY CO.LTD.',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Color(0xff845bef),
                text: 'Прочие',
                isSquare: true,
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 1,
            title: '20%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 2,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 2,
            title: '40%',
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
