import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Engine1 extends StatefulWidget {
  const Engine1({Key? key}) : super(key: key);

  @override
  _Engine1State createState() => _Engine1State();
}

class _Engine1State extends State<Engine1> {
  bool isWorked = true;
  bool isHavRecources = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 250,
      child: Column(
        children: [
          Container(
            width: width / 1.3,
            height: 120,
            // padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 5,
                color: isWorked
                    ? isHavRecources
                        ? Colors.greenAccent
                        : Colors.yellowAccent
                    : Colors.redAccent,
              ),
            ),
            child: Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 12, 157, 235).withOpacity(0.3),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(3),
                        bottomLeft: Radius.circular(3),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 17, 0).withOpacity(0.6),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(3),
                        bottomRight: Radius.circular(3),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Опции симуляции',
                          style: TextStyle(
                              color: Color.fromARGB(255, 236, 236, 236)),
                        ),
                        Divider(),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {
                            setState(() {
                              isWorked = !isWorked;
                            });
                          },
                          child: const Text(
                            'Поломка',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Visibility(
                          visible: isWorked,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                isHavRecources = !isHavRecources;
                              });
                            },
                            child: const Text(
                              'Нехватка сырья',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Lottie.asset(
            isWorked
                ? isHavRecources
                    ? 'assets/arrow.json'
                    : 'assets/attention.json'
                : 'assets/cross.json',
            height: 100,
          )
        ],
      ),
    );
  }
}
