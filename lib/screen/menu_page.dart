import 'dart:async';

import 'package:flutter/material.dart';

class menuPage extends StatefulWidget {
  @override
  _menuPageState createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> with TickerProviderStateMixin {
  List<bool> select = [false, false, false, false, false, false, false, false, false, false];

  final List<AnimationController> _fadeAnimationController = [];
  final List<Animation<double>> _fadeAnimation = [];

  @override
  void initState() {
    super.initState();

    for(int i = 0; i < 10; i++){
      _fadeAnimationController.add(
          AnimationController(
            vsync: this,
            duration: const Duration(milliseconds: 200),
            value: 1,
          ),
      );

      _fadeAnimation.add(CurvedAnimation(
        parent: _fadeAnimationController[i],
        curve: Curves.easeIn,
      ));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7E1DB),
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.413,
            left: MediaQuery.of(context).size.width * 0.32,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: const Color(0xFFF5564E),
                borderRadius: BorderRadius.circular(150),
              ),
              child: const Center(
                child: Text("kaaraakoo", style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.413 - 110,
            left: MediaQuery.of(context).size.width * 0.32 + 90,
            child: AnimatedOpacity(
              opacity: select[0] ? 1 : 0,
              duration: const Duration(seconds: 2),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5564E),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if(select[0]){

                    }
                  },
                  child: const Icon(
                    Icons.add_road_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.413 + 90,
            left: MediaQuery.of(context).size.width * 0.32 + 170,
            child: AnimatedOpacity(
              opacity: select[0] ? 1 : 0,
              duration: const Duration(seconds: 2),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5564E),
                  borderRadius: BorderRadius.circular(70),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if(select[0]){

                    }
                  },
                  child: const Icon(
                    Icons.height,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.413 + 200,
            left: MediaQuery.of(context).size.width * 0.32,
            child: AnimatedOpacity(
              opacity: select[0] ? 1 : 0,
              duration: const Duration(seconds: 2),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5564E),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if(select[0]){

                    }
                  },
                  child: const Icon(
                    Icons.adb,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.413 + 70,
            left: MediaQuery.of(context).size.width * 0.32 - 90,
            child: AnimatedOpacity(
              opacity: select[0] ? 1 : 0,
              duration: const Duration(seconds: 2),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5564E),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if(select[0]){

                    }
                  },
                  child: const Icon(
                    Icons.add_business,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.413 - 70,
            left: MediaQuery.of(context).size.width * 0.32 - 15,
            child: AnimatedOpacity(
              opacity: select[0] ? 1 : 0,
              duration: const Duration(seconds: 2),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5564E),
                  borderRadius: BorderRadius.circular(70),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if(select[0]){

                    }
                  },
                  child: const Icon(
                    Icons.airline_seat_flat_angled_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: select[0] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 - 150,
            left: select[0] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 + 50,
            duration: const Duration(seconds: 2),
            child: FadeTransition(
              opacity: _fadeAnimation[0],
              child: AnimatedContainer(
                width: select[0] ? 150 : 50,
                height: select[0]? 150 : 50,
                duration: const Duration(seconds: 2),
                curve: Curves.linear,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5564E),
                  borderRadius: BorderRadius.circular(select[0] ? 150 : 50),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(select[0] ? 150 : 50),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    print("0");
                    if(check(0)){
                      setState(() {
                        select[0] = !select[0];
                        for(int i = 0; i < 10; i++){
                          if(i == 0){
                            continue;
                          }
                          select[i] = false;
                        }
                      });
                      if(select[0]){
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 0) {
                            continue;
                          }
                          await _fadeAnimationController[i].reverse();
                        }
                      } else {
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 0) {
                            continue;
                          }
                          await _fadeAnimationController[i].forward();
                        }
                      }
                    }
                  },
                  child: const Icon(
                    Icons.print,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: select[1] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 - 70,
            left: select[1] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 - 15,
            duration: const Duration(seconds: 2),
            child: FadeTransition(
              opacity: _fadeAnimation[1],
              child: AnimatedContainer(
                width: select[1] ? 150 : 70,
                height: select[1]? 150 : 70,
                duration: const Duration(seconds: 2),
                curve: Curves.decelerate,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5564E),
                  borderRadius: BorderRadius.circular(select[1] ? 150 : 70),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(select[1] ? 150 : 70),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    print("1");
                    if(check(1)){
                      setState(() {
                        select[1] = !select[1];
                        for(int i = 0; i < 10; i++){
                          if(i == 1){
                            continue;
                          }
                          select[i] = false;
                        }
                      });
                      if(select[1]){
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 1) {
                            continue;
                          }
                          await _fadeAnimationController[i].reverse();
                        }
                      } else {
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 1) {
                            continue;
                          }
                          await _fadeAnimationController[i].forward();
                        }
                      }
                    }
                  },
                  child: const Icon(
                    Icons.access_alarm,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: select[2] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 - 40,
            left: select[2] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 - 125,
            duration: const Duration(seconds: 2),
            child: FadeTransition(
              opacity: _fadeAnimation[2],
              child: AnimatedContainer(
                width: select[2] ? 150 : 90,
                height: select[2]? 150 : 90,
                duration: const Duration(seconds: 2),
                curve: Curves.decelerate,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5564E),
                  borderRadius: BorderRadius.circular(select[2] ? 150 : 90),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(select[2] ? 150 : 90),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    print("2");
                    if(check(2)){
                      setState(() {
                        select[2] = !select[2];
                        for(int i = 0; i < 10; i++){
                          if(i == 2){
                            continue;
                          }
                          select[i] = false;
                        }
                      });
                      if(select[2]){
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 2) {
                            continue;
                          }
                          await _fadeAnimationController[i].reverse();
                        }
                      } else {
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 2) {
                            continue;
                          }
                          await _fadeAnimationController[i].forward();
                        }
                      }
                    }
                  },
                  child: const Icon(
                    Icons.accessibility_new_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: select[3] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 + 70,
            left: select[3] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 - 90,
            duration: const Duration(seconds: 2),
            child: FadeTransition(
              opacity: _fadeAnimation[3],
              child: AnimatedContainer(
                width: select[3] ? 150 : 50,
                height: select[3]? 150 : 50,
                duration: const Duration(seconds: 2),
                curve: Curves.decelerate,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5564E),
                  borderRadius: BorderRadius.circular(select[3] ? 150 : 50),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(select[3] ? 150 : 50),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    print("3");
                    if(check(3)){
                      setState(() {
                        select[3] = !select[3];
                        for(int i = 0; i < 10; i++){
                          if(i == 3){
                            continue;
                          }
                          select[i] = false;
                        }
                      });
                      if(select[3]){
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 3) {
                            continue;
                          }
                          await _fadeAnimationController[i].reverse();
                        }
                      } else {
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 3) {
                            continue;
                          }
                          await _fadeAnimationController[i].forward();
                        }
                      }
                    }
                  },
                  child: const Icon(
                    Icons.account_balance,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: select[4] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 + 110,
            left: select[4] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 - 50,
            duration: const Duration(seconds: 2),
            child: FadeTransition(
              opacity: _fadeAnimation[4],
              child: AnimatedContainer(
                width: select[4] ? 150 : 70,
                height: select[4]? 150 : 70,
                duration: const Duration(seconds: 2),
                curve: Curves.decelerate,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5564E),
                  borderRadius: BorderRadius.circular(select[4] ? 150 : 70),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(select[4] ? 150 : 70),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    print("4");
                    if(check(4)){
                      setState(() {
                        select[4] = !select[4];
                        for(int i = 0; i < 10; i++){
                          if(i == 4){
                            continue;
                          }
                          select[i] = false;
                        }
                      });
                      if(select[4]){
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 4) {
                            continue;
                          }
                          await _fadeAnimationController[i].reverse();
                        }
                      } else {
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 4) {
                            continue;
                          }
                          await _fadeAnimationController[i].forward();
                        }
                      }
                    }
                  },
                  child: const Icon(
                    Icons.add_a_photo_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: select[5] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 + 200,
            left: select[5] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32,
            duration: const Duration(seconds: 2),
            child: FadeTransition(
              opacity: _fadeAnimation[5],
              child: AnimatedContainer(
                width: select[5] ? 150 : 100,
                height: select[5]? 150 : 100,
                duration: const Duration(seconds: 2),
                curve: Curves.decelerate,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5564E),
                  borderRadius: BorderRadius.circular(select[5] ? 150 : 100),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(select[5] ? 150 : 100),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    print("5");
                    if(check(5)){
                      setState(() {
                        select[5] = !select[5];
                        for(int i = 0; i < 10; i++){
                          if(i == 5){
                            continue;
                          }
                          select[i] = false;
                        }
                      });
                      if(select[5]){
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 5) {
                            continue;
                          }
                          await _fadeAnimationController[i].reverse();
                        }
                      } else {
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 5) {
                            continue;
                          }
                          await _fadeAnimationController[i].forward();
                        }
                      }
                    }
                  },
                  child: const Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: select[6] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 + 160,
            left: select[6] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 + 100,
            duration: const Duration(seconds: 2),
            child: FadeTransition(
              opacity: _fadeAnimation[6],
              child: AnimatedContainer(
                width: select[6] ? 150 : 50,
                height: select[6]? 150 : 50,
                duration: const Duration(seconds: 2),
                curve: Curves.decelerate,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5564E),
                  borderRadius: BorderRadius.circular(select[6] ? 150 : 50),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(select[6] ? 150 : 50),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    print("6");
                    if(check(6)){
                      setState(() {
                        select[6] = !select[6];
                        for(int i = 0; i < 10; i++){
                          if(i == 6){
                            continue;
                          }
                          select[i] = false;
                        }
                      });
                      if(select[6]){
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 6) {
                            continue;
                          }
                          await _fadeAnimationController[i].reverse();
                        }
                      } else {
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 6) {
                            continue;
                          }
                          await _fadeAnimationController[i].forward();
                        }
                      }
                    }
                  },
                  child: const Icon(
                    Icons.airport_shuttle,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: select[7] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 + 90,
            left: select[7] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 + 170,
            duration: const Duration(seconds: 2),
            child: FadeTransition(
              opacity: _fadeAnimation[7],
              child: AnimatedContainer(
                width: select[7] ? 150 : 70,
                height: select[7]? 150 : 70,
                duration: const Duration(seconds: 2),
                curve: Curves.decelerate,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5564E),
                  borderRadius: BorderRadius.circular(select[7] ? 150 : 70),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(select[7] ? 150 : 70),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    print("7");
                    if(check(7)){
                      setState(() {
                        select[7] = !select[7];
                        for(int i = 0; i < 10; i++){
                          if(i == 7){
                            continue;
                          }
                          select[i] = false;
                        }
                      });
                      if(select[7]){
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 7) {
                            continue;
                          }
                          await _fadeAnimationController[i].reverse();
                        }
                      } else {
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 7) {
                            continue;
                          }
                          await _fadeAnimationController[i].forward();
                        }
                      }
                    }
                  },
                  child: const Icon(
                    Icons.ad_units_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: select[8] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 - 20,
            left: select[8] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 + 180,
            duration: const Duration(seconds: 2),
            child: FadeTransition(
              opacity: _fadeAnimation[8],
              child: AnimatedContainer(
                width: select[8] ? 150 : 50,
                height: select[8]? 150 : 50,
                duration: const Duration(seconds: 2),
                curve: Curves.decelerate,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5564E),
                  borderRadius: BorderRadius.circular(select[8] ? 150 : 50),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(select[8] ? 150 : 50),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    print("8");
                    if(check(8)){
                      setState(() {
                        select[8] = !select[8];
                        for(int i = 0; i < 10; i++){
                          if(i == 8){
                            continue;
                          }
                          select[i] = false;
                        }
                      });
                      if(select[8]){
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 8) {
                            continue;
                          }
                          await _fadeAnimationController[i].reverse();
                        }
                      } else {
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 8) {
                            continue;
                          }
                          await _fadeAnimationController[i].forward();
                        }
                      }
                    }
                  },
                  child: const Icon(
                    Icons.add_comment_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: select[9] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 - 110,
            left: select[9] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 + 90,
            duration: const Duration(seconds: 2),
            child: FadeTransition(
              opacity: _fadeAnimation[9],
              child: AnimatedContainer(
                width: select[9] ? 150 : 100,
                height: select[9]? 150 : 100,
                duration: const Duration(seconds: 2),
                curve: Curves.decelerate,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5564E),
                  borderRadius: BorderRadius.circular(select[9] ? 150 : 100),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all(Colors.transparent),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(select[9] ? 150 : 100),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    print("9");
                    if(check(9)){
                      setState(() {
                        select[9] = !select[9];
                        for(int i = 0; i < 10; i++){
                          if(i == 9){
                            continue;
                          }
                          select[i] = false;
                        }
                      });
                      if(select[9]){
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 9) {
                            continue;
                          }
                          await _fadeAnimationController[i].reverse();
                        }
                      } else {
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 9) {
                            continue;
                          }
                          await _fadeAnimationController[i].forward();
                        }
                      }
                    }
                  },
                  child: const Icon(
                    Icons.add_shopping_cart_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    for(int i = 0; i < 10; i++){
      _fadeAnimationController[i].dispose();
    }
    super.dispose();
  }

  bool check(int number){
    for(int i = 0; i < select.length; i++){
      if(i == number){
        continue;
      }
      if(select[i]) {
        return false;
      }
    }
    return true;
  }
}