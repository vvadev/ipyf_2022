import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shablon_v1/routes.dart';
import 'package:shablon_v1/widgets/adaptive_components-0.0.7/adaptive_components.dart';
import 'package:shablon_v1/widgets/anatis/analisChart1.dart';
import 'package:shablon_v1/widgets/anatis/analisChart2.dart';
import 'package:shablon_v1/widgets/background_image.dart';
import 'package:shablon_v1/widgets/prodaga/chart1.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MF Molasses Factory',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Color.fromARGB(255, 0, 56, 186),
        actions: kRoutes
            .map(
              (e) => TextButton(
                onPressed: () {
                  GoRouter.of(context).go(e.address);
                },
                child: Text(
                  e.name,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
            .toList(),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: AdaptiveColumn(
          gutter: 0,
          margin: 0,
          children: [
            AdaptiveContainer(columnSpan: 12, child: _WelcomeWidget()),
            AdaptiveContainer(columnSpan: 12, child: _PlusWidget()),
            AdaptiveContainer(columnSpan: 12, child: _ProblematicWidget()),
            AdaptiveContainer(columnSpan: 12, child: _AnalisWidget()),
            AdaptiveContainer(columnSpan: 12, child: _PrimenenieWidget()),
            AdaptiveContainer(columnSpan: 12, child: _OthodiWidget()),
            AdaptiveContainer(columnSpan: 12, child: _FilesWidget()),
            AdaptiveContainer(columnSpan: 12, child: _AboutUsWidget()),
          ],
        ),
      ),
    );
  }
}

class _PrimenenieWidget extends StatelessWidget {
  const _PrimenenieWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: AdaptiveColumn(
        children: [
          AdaptiveContainer(
            columnSpan: 12,
            child: Text(
              'Области применения',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Comfortaa',
                  fontSize: 32, color: Color.fromARGB(255, 73, 73, 73)),
            ),
          ),
          AdaptiveContainer(
            columnSpan: 12,
            child: Column(
              children: [
                Container(
                  width: width / 1.5,
                  // height: 100,
                  child: Row(
                    children: [
                      Flexible(
                        child: AutoSizeText(
                          'Флокулянты для очистки природных и промышленных сточных вод, переработки пищевых продуктов; обезвоживающие агенты для осадков',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 14,
                            color: Color.fromARGB(255, 73, 73, 73),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Center(
                          child: AutoSizeText(
                            '1',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.getFont(
                              'Comfortaa',
                              fontSize: 32,
                              color: Color.fromARGB(255, 73, 73, 73),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: width / 1.5,
                  // height: 100,
                  child: Row(
                    children: [
                      Flexible(
                        child: Center(
                          child: AutoSizeText(
                            '2',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.getFont(
                              'Comfortaa',
                              fontSize: 32,
                              color: Color.fromARGB(255, 73, 73, 73),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: AutoSizeText(
                          'Регуляторы прочности бумаги в сухом и влажном состоянии, добавки для улучшения качества и печатных свойств бумаги',
                          textAlign: TextAlign.right,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 14,
                            color: Color.fromARGB(255, 73, 73, 73),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: width / 1.5,
                  // height: 100,
                  child: Row(
                    children: [
                      Flexible(
                        child: AutoSizeText(
                          'Флокулянты хвостов флотации руд, при обогащении и регенерации полезных ископаемых (уран, золото, титан, каменный уголь, алюминий, железо). Уменьшение запыленности в угольных шахтах, при бурении, на асбестовых заводах',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 14,
                            color: Color.fromARGB(255, 73, 73, 73),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Center(
                          child: AutoSizeText(
                            '3',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Comfortaa',
                              fontSize: 32,
                              color: Color.fromARGB(255, 73, 73, 73),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: width / 1.5,
                  // height: 100,
                  child: Row(
                    children: [
                      Flexible(
                        child: Center(
                          child: AutoSizeText(
                            '4',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.getFont(
                              'Comfortaa',
                              fontSize: 32,
                              color: Color.fromARGB(255, 73, 73, 73),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: AutoSizeText(
                          'Стабилизаторы, регуляторы фильтруемости и реологических свойств буровых растворов. Структурообразователи почв для укрепления стенок скважин при вторичной добыче нефти и гидравлическом разрыве пластов',
                          textAlign: TextAlign.right,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 14,
                            color: Color.fromARGB(255, 73, 73, 73),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: width / 1.5,
                  // height: 100,
                  child: Row(
                    children: [
                      Flexible(
                        child: AutoSizeText(
                          'Структурообразователи почв. Пленкообразователи для семян, удобрений, инсектицидов, гербицидов и фунгицидов',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 14,
                            color: Color.fromARGB(255, 73, 73, 73),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Center(
                          child: AutoSizeText(
                            '5',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Comfortaa',
                              fontSize: 32,
                              color: Color.fromARGB(255, 73, 73, 73),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: width / 1.5,
                  // height: 100,
                  child: Row(
                    children: [
                      Flexible(
                        child: Center(
                          child: AutoSizeText(
                            '6',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.getFont(
                              'Comfortaa',
                              fontSize: 32,
                              color: Color.fromARGB(255, 73, 73, 73),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: AutoSizeText(
                          'Суперабсорбенты для гигиенических и медицинских средств. Пленкообразователи для фармацевтических препаратов пролонгированного действия. Гидрогели для контактных линз',
                          textAlign: TextAlign.right,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 14,
                            color: Color.fromARGB(255, 73, 73, 73),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: width / 1.5,
                  // height: 100,
                  child: Row(
                    children: [
                      Flexible(
                        child: AutoSizeText(
                          'Агенты, снижающие гидравлическое сопротивление для ускорения движения морских судов, для перекачки нефтепродуктов, суспензий и эмульсий, для увеличения дальнобойности водных струй в пожарном деле. Шлихтующие агенты для хлопчатобумажных, шерстяных, вискозных и ацетатных нитей. Аппертирующие агенты для тканей. Клеи для бумаги и текстиля',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 14,
                            color: Color.fromARGB(255, 73, 73, 73),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Center(
                          child: AutoSizeText(
                            '7',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Comfortaa',
                              fontSize: 32,
                              color: Color.fromARGB(255, 73, 73, 73),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _PlusWidget extends StatelessWidget {
  const _PlusWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: AdaptiveColumn(
        children: [
          AdaptiveContainer(
            columnSpan: 12,
            child: Text(
              'Примущества нашего решения',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Comfortaa',
                  fontSize: 32, color: Color.fromARGB(255, 73, 73, 73)),
            ),
          ),
          AdaptiveContainer(
            columnSpan: 12,
            child: AdaptiveColumn(
              children: [
                AdaptiveContainer(
                  columnSpan: 5,
                  height: 250,
                  child: Lottie.asset('assets/sales-graph.json'),
                ),
                AdaptiveContainer(
                  columnSpan: 5,
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Отечественный производитель',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Comfortaa',
                          fontSize: 32,
                          color: Color.fromARGB(222, 0, 0, 0),
                        ),
                      ),
                      Text(
                        'Все производство локализовано в России и не зависит от санкций',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Comfortaa',
                          fontSize: 14,
                          color: Color.fromARGB(147, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                ),
                AdaptiveContainer(
                  columnSpan: 12,
                  child: Divider(),
                ),
                AdaptiveContainer(
                  columnSpan: 5,
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Экологически чистое производство',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Comfortaa',
                          fontSize: 32,
                          color: Color.fromARGB(222, 0, 0, 0),
                        ),
                      ),
                      Text(
                        'Отсутствуют вредные выбросы, а так же все отходы продаются на корм или используются повторно',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Comfortaa',
                          fontSize: 14,
                          color: Color.fromARGB(147, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                ),
                AdaptiveContainer(
                  columnSpan: 5,
                  height: 250,
                  child: Lottie.asset('assets/green-fabric.json'),
                ),
                AdaptiveContainer(
                  columnSpan: 12,
                  child: Divider(),
                ),
                AdaptiveContainer(
                  columnSpan: 5,
                  height: 250,
                  child: Lottie.asset('assets/delivery-box.json'),
                ),
                AdaptiveContainer(
                  columnSpan: 5,
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Быстрые и стабильные поставки продукции',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Comfortaa',
                          fontSize: 32,
                          color: Color.fromARGB(222, 0, 0, 0),
                        ),
                      ),
                      Text(
                        'Предприятие можно расположить близко к центрам потребления',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Comfortaa',
                          fontSize: 14,
                          color: Color.fromARGB(147, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                ),
                AdaptiveContainer(
                  columnSpan: 12,
                  child: Container(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FilesWidget extends StatelessWidget {
  const _FilesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: AdaptiveColumn(
        children: [
          AdaptiveContainer(
            columnSpan: 12,
            child: Text(
              'Дополнительные файлы',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Comfortaa',
                  fontSize: 32, color: Color.fromARGB(255, 73, 73, 73)),
            ),
          ),
          AdaptiveContainer(
            height: 50,
            columnSpan: 2,
            child: GestureDetector(
              onTap: (() {}),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.6),
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Row(
                  children: const [
                    Icon(Icons.file_download),
                    Spacer(),
                    Text('Файл 1'),
                  ],
                ),
              ),
            ),
          ),
          AdaptiveContainer(
            height: 50,
            columnSpan: 2,
            child: GestureDetector(
              onTap: (() {}),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.6),
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Row(
                  children: const [
                    Icon(Icons.file_download),
                    Spacer(),
                    Text('Файл 1'),
                  ],
                ),
              ),
            ),
          ),
          AdaptiveContainer(
            columnSpan: 12,
            child: Container(),
          ),
        ],
      ),
    );
  }
}

class _AnalisWidget extends StatelessWidget {
  const _AnalisWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: AdaptiveColumn(
        children: [
          AdaptiveContainer(
            columnSpan: 12,
            child: Text(
              'Анализ рынка',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Comfortaa',
                  fontSize: 32, color: Color.fromARGB(255, 73, 73, 73)),
            ),
          ),
          AdaptiveContainer(
            columnSpan: 5,
            child: AnalisPieChart1(),
          ),
          AdaptiveContainer(
            columnSpan: 5,
            child: AnalisPieChart2(),
          ),
          AdaptiveContainer(
            columnSpan: 12,
            child: Container(),
          ),
        ],
      ),
    );
  }
}

class _OthodiWidget extends StatefulWidget {
  const _OthodiWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<_OthodiWidget> createState() => _OthodiWidgetState();
}

class _OthodiWidgetState extends State<_OthodiWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: AdaptiveColumn(
        children: [
          AdaptiveContainer(
            columnSpan: 12,
            child: Text(
              'Рынки сбыта отходов производства',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Comfortaa',
                  fontSize: 32, color: Color.fromARGB(255, 73, 73, 73)),
            ),
          ),
          AdaptiveContainer(
            columnSpan: 12,
            child: PieChart1(),
          ),
        ],
      ),
    );
  }
}

class _AboutUsWidget extends StatelessWidget {
  const _AboutUsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: AdaptiveColumn(
        children: [
          AdaptiveContainer(
            columnSpan: 12,
            child: Text(
              'Наша команда',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Comfortaa',
                  fontSize: 32, color: Color.fromARGB(255, 73, 73, 73)),
            ),
          ),
          AdaptiveContainer(
            columnSpan: 12,
            child: Container(
              child: AdaptiveColumn(
                gutter: 0,
                margin: 0,
                children: [
                  AdaptiveContainer(
                    columnSpan: 3,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    height: 300,
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          maxRadius: 70,
                          minRadius: 30,
                          backgroundImage:
                              AssetImage('assets/photo/voloda.jpg'),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Владимир Вершинин',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 21,
                            color: Color.fromARGB(222, 0, 0, 0),
                          ),
                        ),
                        const Divider(),
                        Text(
                          'НГТУ им.Алексеева',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 14,
                            color: Color.fromARGB(224, 81, 81, 81),
                          ),
                        ),
                        Text(
                          'Программист',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 12,
                            color: Color.fromARGB(224, 81, 81, 81),
                          ),
                        ),
                      ],
                    ),
                  ),
                  AdaptiveContainer(
                    columnSpan: 3,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    height: 300,
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          maxRadius: 70,
                          minRadius: 30,
                          backgroundImage:
                              AssetImage('assets/photo/ainaza.jpg'),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Айназа Сайфутдинова',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 21,
                            color: Color.fromARGB(222, 0, 0, 0),
                          ),
                        ),
                        const Divider(),
                        Text(
                          'ТГРУ',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 14,
                            color: Color.fromARGB(224, 81, 81, 81),
                          ),
                        ),
                        Text(
                          'Геолог',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 12,
                            color: Color.fromARGB(224, 81, 81, 81),
                          ),
                        ),
                      ],
                    ),
                  ),
                  AdaptiveContainer(
                    columnSpan: 3,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    height: 300,
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          maxRadius: 70,
                          minRadius: 30,
                          backgroundImage:
                              AssetImage('assets/photo/Yuliya.jpg'),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Мартышкина Юлия',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 21,
                            color: Color.fromARGB(222, 0, 0, 0),
                          ),
                        ),
                        const Divider(),
                        Text(
                          'СПХФУ',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 14,
                            color: Color.fromARGB(224, 81, 81, 81),
                          ),
                        ),
                        Text(
                          'Биотехнолог',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 12,
                            color: Color.fromARGB(224, 81, 81, 81),
                          ),
                        ),
                      ],
                    ),
                  ),
                  AdaptiveContainer(
                    columnSpan: 3,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    height: 300,
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          maxRadius: 70,
                          minRadius: 30,
                          backgroundImage: AssetImage('assets/photo/almaz.jpg'),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Мухаметгалеев Алмаз',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 21,
                            color: Color.fromARGB(222, 0, 0, 0),
                          ),
                        ),
                        const Divider(),
                        Text(
                          'РГУНГ',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 14,
                            color: Color.fromARGB(224, 81, 81, 81),
                          ),
                        ),
                        Text(
                          'Разработка нефтяных месторождений',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 12,
                            color: Color.fromARGB(224, 81, 81, 81),
                          ),
                        ),
                      ],
                    ),
                  ),
                  AdaptiveContainer(
                    columnSpan: 3,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    height: 300,
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          maxRadius: 70,
                          minRadius: 30,
                          backgroundImage:
                              AssetImage('assets/photo/ruslan.jpg'),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Мусин Руслан',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 21,
                            color: Color.fromARGB(222, 0, 0, 0),
                          ),
                        ),
                        const Divider(),
                        Text(
                          'Татнефть "Добыча"',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 14,
                            color: Color.fromARGB(224, 81, 81, 81),
                          ),
                        ),
                        Text(
                          'Инженер-теплоэнергетик',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 12,
                            color: Color.fromARGB(224, 81, 81, 81),
                          ),
                        ),
                      ],
                    ),
                  ),
                  AdaptiveContainer(
                    columnSpan: 3,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    height: 300,
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          maxRadius: 70,
                          minRadius: 30,
                          backgroundImage: AssetImage('assets/photo/udem.jpg'),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Джумаев Уктам',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 21,
                            color: Color.fromARGB(222, 0, 0, 0),
                          ),
                        ),
                        const Divider(),
                        Text(
                          '"Узбекнефтегаз"',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 14,
                            color: Color.fromARGB(224, 81, 81, 81),
                          ),
                        ),
                        Text(
                          'Технолог',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Comfortaa',
                            fontSize: 12,
                            color: Color.fromARGB(224, 81, 81, 81),
                          ),
                        ),
                      ],
                    ),
                  ),
                  AdaptiveContainer(
                    columnSpan: 12,
                    child: Container(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProblematicWidget extends StatelessWidget {
  const _ProblematicWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: AdaptiveColumn(
        children: [
          AdaptiveContainer(
            columnSpan: 12,
            child: Text(
              'Проблематика',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Comfortaa',
                  fontSize: 32, color: Color.fromARGB(255, 73, 73, 73)),
            ),
          ),
          AdaptiveContainer(
            height: 400,
            columnSpan: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset('assets/business-problem.json', height: 200),
                Text(
                  'Отсутствует производство итаконовой кислоты в РФ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont('Comfortaa',
                      fontSize: 21, color: Color.fromARGB(255, 73, 73, 73)),
                ),
              ],
            ),
          ),
          AdaptiveContainer(
            height: 400,
            columnSpan: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset('assets/chemistry-animation.json', height: 200),
                AutoSizeText(
                  'Отсутствие рентабельного способа выделения и очистки итаконовой кислоты',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont('Comfortaa',
                      fontSize: 21, color: Color.fromARGB(255, 73, 73, 73)),
                ),
              ],
            ),
          ),
          AdaptiveContainer(
            columnSpan: 12,
            child: Container(),
          )
        ],
      ),
    );
  }
}

class _ShablonWidget extends StatelessWidget {
  const _ShablonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: AdaptiveColumn(
        children: [
          AdaptiveContainer(
            columnSpan: 12,
            child: Text(
              'Проблематика',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Comfortaa',
                  fontSize: 32, color: Color.fromARGB(255, 73, 73, 73)),
            ),
          ),
          AdaptiveContainer(
              columnSpan: 12,
              child: Column(
                children: [],
              ))
        ],
      ),
    );
  }
}

class _WelcomeWidget extends StatelessWidget {
  const _WelcomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      child: BackgroundImage(
        img: 'assets/background.jpg',
        sigmaX: 1,
        sigmaY: 1,
        backgroundColorFilter: Colors.black.withOpacity(0.4),
        imageBoxFit: BoxFit.cover,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Получение итаконовой кислоты',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Comfortaa',
                  fontSize: 32, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              'Molasses Factory',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Comfortaa',
                fontSize: 24,
                color: Color.fromARGB(222, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
