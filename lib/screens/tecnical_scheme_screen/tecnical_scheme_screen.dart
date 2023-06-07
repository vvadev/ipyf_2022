import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shablon_v1/routes.dart';

import '../../widgets/adaptive_components-0.0.7/adaptive_components.dart';

class TecnicalSchemeScreen extends StatelessWidget {
  const TecnicalSchemeScreen({Key? key}) : super(key: key);

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
        child: AdaptiveColumn(
          gutter: 0,
          margin: 0,
          children: [
            AdaptiveContainer(columnSpan: 12, child: _SchemeWidget()),
          ],
        ),
      ),
    );
  }
}

class _SchemeWidget extends StatelessWidget {
  const _SchemeWidget({
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
              'Техническая схема',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Comfortaa',
                  fontSize: 32, color: Color.fromARGB(255, 73, 73, 73)),
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
