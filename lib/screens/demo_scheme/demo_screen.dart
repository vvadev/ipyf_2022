import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shablon_v1/routes.dart';
import 'package:shablon_v1/widgets/endines/engine1.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MF Molasses Factory'),
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
      body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Engine1(),
              ],
            ),
          )),
    );
  }
}
