import 'dart:async';

import 'package:flutter/material.dart';

class menuPage extends StatefulWidget {
  @override
  _menuPageState createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> with TickerProviderStateMixin {
  List<bool> select = [false, false, false, false, false, false, false, false, false, false];
  bool select_one = false;

  final List<AnimationController> _fadeAnimationController = [];
  final List<Animation<double>> _fadeAnimation = [];

  @override
  void initState() {
    super.initState();

    for(int i = 0; i < 11; i++){
      _fadeAnimationController.add(
          AnimationController(
            vsync: this,
            duration: const Duration(milliseconds: 65),
            value: 1,
          ),
      );

      _fadeAnimation.add(CurvedAnimation(
        parent: _fadeAnimationController[i],
        curve: Curves.linear,
        reverseCurve: Curves.linear,
      ));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7E1DB),
      body: Stack(
        children: [
          AnimatedPositioned(
            top: MediaQuery.of(context).size.height * 0.413 + 15,
            left: MediaQuery.of(context).size.width * 0.32 + 15,
            duration: const Duration(seconds: 2),
            child: FadeTransition(
              opacity: _fadeAnimation[0],
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                //    center: Alignment(0.7, -0.6),
                    radius: 0.5,
                    colors: <Color>[
                      Color(0xFFFFBBB8),
                      Color(0xFFF5564E),
                      //Color(0xFF490500),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x804E4E4E),
                      blurRadius: 3,
                      spreadRadius: 0.1,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(150),
                ),
                child: Center(
                  child: Image.asset(
                    color: Colors.white,
                    "asset/logo.png",
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            ),
          ),
          //
          AnimatedPositioned(
            top: select_one ? MediaQuery.of(context).size.height * 0.413 - 110 :MediaQuery.of(context).size.height * 0.413 - 20,
            left: select_one ? MediaQuery.of(context).size.width * 0.32 + 90 : MediaQuery.of(context).size.width * 0.32 + 60,
            duration: Duration(milliseconds: 666),
            child: AnimatedOpacity(
              opacity: select_one ? 1 : 0,
              duration: const Duration(milliseconds: 666),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.7, -0.6),
                    radius: 1.6,
                    colors: <Color>[
                      Color(0xFFFFBBB8),
                      Color(0xFFF5564E),
                      Color(0xFF490500),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x804E4E4E),
                      blurRadius: 3,
                      spreadRadius: 0.1,
                    ),
                  ],
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
          AnimatedPositioned(
            top: select_one ? MediaQuery.of(context).size.height * 0.413 + 90 : MediaQuery.of(context).size.height * 0.413 + 75,
            left: select_one ? MediaQuery.of(context).size.width * 0.32 + 170 : MediaQuery.of(context).size.width * 0.32 + 90,
            duration: Duration(milliseconds: 666),
            child: AnimatedOpacity(
              opacity: select_one ? 1 : 0,
              duration: const Duration(milliseconds: 666),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.7, -0.6),
                    radius: 1.6,
                    colors: <Color>[
                      Color(0xFFFFBBB8),
                      Color(0xFFF5564E),
                      Color(0xFF490500),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x804E4E4E),
                      blurRadius: 3,
                      spreadRadius: 0.1,
                    ),
                  ],
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
          AnimatedPositioned(
            top: select_one ? MediaQuery.of(context).size.height * 0.413 + 200 : MediaQuery.of(context).size.height * 0.413 + 80,
            left: select_one ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 + 25,
            duration: Duration(milliseconds: 666),
            child: AnimatedOpacity(
              opacity: select_one ? 1 : 0,
              duration: const Duration(milliseconds: 666),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.7, -0.6),
                    radius: 1.6,
                    colors: <Color>[
                      Color(0xFFFFBBB8),
                      Color(0xFFF5564E),
                      Color(0xFF490500),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x804E4E4E),
                      blurRadius: 3,
                      spreadRadius: 0.1,
                    ),
                  ],
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
          AnimatedPositioned(
            top: select_one ? MediaQuery.of(context).size.height * 0.413 + 70 : MediaQuery.of(context).size.height * 0.413 + 75,
            left: select_one ? MediaQuery.of(context).size.width * 0.32 - 90 : MediaQuery.of(context).size.width * 0.32  - 5,
            duration: Duration(milliseconds: 666),
            child: AnimatedOpacity(
              opacity: select_one ? 1 : 0,
              duration: const Duration(milliseconds: 666),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.7, -0.6),
                    radius: 1.6,
                    colors: <Color>[
                      Color(0xFFFFBBB8),
                      Color(0xFFF5564E),
                      Color(0xFF490500),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x804E4E4E),
                      blurRadius: 3,
                      spreadRadius: 0.1,
                    ),
                  ],
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
          AnimatedPositioned(
            top: select_one ? MediaQuery.of(context).size.height * 0.413 - 70 : MediaQuery.of(context).size.height * 0.413,
            left: select_one ? MediaQuery.of(context).size.width * 0.32 - 15 : MediaQuery.of(context).size.width * 0.32,
            duration: Duration(milliseconds: 666),
            child: AnimatedOpacity(
              opacity: select_one ? 1 : 0,
              duration: const Duration(milliseconds: 666),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.7, -0.6),
                    radius: 1.6,
                    colors: <Color>[
                      Color(0xFFFFBBB8),
                      Color(0xFFF5564E),
                      Color(0xFF490500),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x804E4E4E),
                      blurRadius: 3,
                      spreadRadius: 0.1,
                    ),
                  ],
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
          //
          AnimatedPositioned(
            top: select[0] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 - 100,
            left: select[0] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 + 50,
            duration: const Duration(milliseconds: 666),
            child: FadeTransition(
              opacity: _fadeAnimation[1],
              child: AnimatedContainer(
                width: select[0] ? 150 : 50,
                height: select[0]? 150 : 50,
                duration: const Duration(milliseconds: 666),
                curve: Curves.easeOutQuint,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.7, -0.6),
                    radius: 1.6,
                    colors: <Color>[
                      Color(0xFFFFBBB8),
                      Color(0xFFF5564E),
                      Color(0xFF490500),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(select[0] ? 150 : 50),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x804E4E4E),
                      blurRadius: 3,
                      spreadRadius: 0.1,
                    ),
                  ]
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
                    if(check(0)){
                      setState(() {
                        for(int i = 0; i < 10; i++){
                          if(i == 0){
                            continue;
                          }
                          select[i] = false;
                        }
                      });
                      if(!select[0]){
                        select[0] = !select[0];
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 1) {
                            continue;
                          }
                          await _fadeAnimationController[i].reverse();
                        }
                        Timer(
                            const Duration(milliseconds: 100), ()=> setState(() {
                              select_one = true;
                            }
                            )
                        );
                      } else {
                        setState(() {
                          select_one = false;
                        });
                        Timer(
                            const Duration(milliseconds: 666), () async {
                          setState(() {
                            select[0] = !select[0];
                          });
                          for(int i = 0; i < _fadeAnimationController.length; i++){
                            if(i == 1) {
                              continue;
                            }
                            await _fadeAnimationController[i].forward();
                          }
                        }
                        );
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
            top: select[1] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 - 75,
            left: select[1] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 - 20,
            duration: const Duration(milliseconds: 666),
            child: FadeTransition(
              opacity: _fadeAnimation[2],
              child: AnimatedContainer(
                width: select[1] ? 150 : 70,
                height: select[1]? 150 : 70,
                duration: const Duration(milliseconds: 666),
                curve: Curves.easeOutQuint,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.7, -0.6),
                    radius: 1.6,
                    colors: <Color>[
                      Color(0xFFFFBBB8),
                      Color(0xFFF5564E),
                      Color(0xFF490500),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x804E4E4E),
                      blurRadius: 3,
                      spreadRadius: 0.1,
                    ),
                  ],
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
                    Icons.access_alarm,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: select[2] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 - 30,
            left: select[2] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 - 100,
            duration: const Duration(milliseconds: 666),
            child: FadeTransition(
              opacity: _fadeAnimation[3],
              child: AnimatedContainer(
                width: select[2] ? 150 : 90,
                height: select[2]? 150 : 90,
                duration: const Duration(milliseconds: 666),
                curve: Curves.easeOutQuint,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.7, -0.6),
                    radius: 1.6,
                    colors: <Color>[
                      Color(0xFFFFBBB8),
                      Color(0xFFF5564E),
                      Color(0xFF490500),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x804E4E4E),
                      blurRadius: 3,
                      spreadRadius: 0.1,
                    ),
                  ],
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
            duration: const Duration(milliseconds: 666),
            child: FadeTransition(
              opacity: _fadeAnimation[4],
              child: AnimatedContainer(
                width: select[3] ? 150 : 50,
                height: select[3]? 150 : 50,
                duration: const Duration(milliseconds: 666),
                curve: Curves.easeOutQuint,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.7, -0.6),
                    radius: 1.6,
                    colors: <Color>[
                      Color(0xFFFFBBB8),
                      Color(0xFFF5564E),
                      Color(0xFF490500),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x804E4E4E),
                      blurRadius: 3,
                      spreadRadius: 0.1,
                    ),
                  ],
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
                    Icons.account_balance,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: select[4] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 + 130,
            left: select[4] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 - 65,
            duration: const Duration(milliseconds: 666),
            child: FadeTransition(
              opacity: _fadeAnimation[5],
              child: AnimatedContainer(
                width: select[4] ? 150 : 70,
                height: select[4]? 150 : 70,
                duration: const Duration(milliseconds: 666),
                curve: Curves.easeOutQuint,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.7, -0.6),
                    radius: 1.6,
                    colors: <Color>[
                      Color(0xFFFFBBB8),
                      Color(0xFFF5564E),
                      Color(0xFF490500),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x804E4E4E),
                      blurRadius: 3,
                      spreadRadius: 0.1,
                    ),
                  ],
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
                    Icons.add_a_photo_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: select[5] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 + 180,
            left: select[5] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32,
            duration: const Duration(milliseconds: 666),
            child: FadeTransition(
              opacity: _fadeAnimation[6],
              child: AnimatedContainer(
                width: select[5] ? 150 : 100,
                height: select[5]? 150 : 100,
                duration: const Duration(milliseconds: 666),
                curve: Curves.easeOutQuint,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.7, -0.6),
                    radius: 1.6,
                    colors: <Color>[
                      Color(0xFFFFBBB8),
                      Color(0xFFF5564E),
                      Color(0xFF490500),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x804E4E4E),
                      blurRadius: 3,
                      spreadRadius: 0.1,
                    ),
                  ],
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
                    Icons.add_circle_outline,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: select[6] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 + 180,
            left: select[6] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 + 115,
            duration: const Duration(milliseconds: 666),
            child: FadeTransition(
              opacity: _fadeAnimation[7],
              child: AnimatedContainer(
                width: select[6] ? 150 : 50,
                height: select[6]? 150 : 50,
                duration: const Duration(milliseconds: 666),
                curve: Curves.easeOutQuint,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.7, -0.6),
                    radius: 1.6,
                    colors: <Color>[
                      Color(0xFFFFBBB8),
                      Color(0xFFF5564E),
                      Color(0xFF490500),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x804E4E4E),
                      blurRadius: 3,
                      spreadRadius: 0.1,
                    ),
                  ],
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
                    Icons.airport_shuttle,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: select[7] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 + 100,
            left: select[7] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 + 160,
            duration: const Duration(milliseconds: 666),
            child: FadeTransition(
              opacity: _fadeAnimation[8],
              child: AnimatedContainer(
                width: select[7] ? 150 : 70,
                height: select[7]? 150 : 70,
                duration: const Duration(milliseconds: 666),
                curve: Curves.easeOutQuint,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.7, -0.6),
                    radius: 1.6,
                    colors: <Color>[
                      Color(0xFFFFBBB8),
                      Color(0xFFF5564E),
                      Color(0xFF490500),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x804E4E4E),
                      blurRadius: 3,
                      spreadRadius: 0.1,
                    ),
                  ],
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
                    Icons.ad_units_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: select[8] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 + 20,
            left: select[8] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 + 180,
            duration: const Duration(milliseconds: 666),
            child: FadeTransition(
              opacity: _fadeAnimation[9],
              child: AnimatedContainer(
                width: select[8] ? 150 : 50,
                height: select[8]? 150 : 50,
                duration: const Duration(milliseconds: 666),
                curve: Curves.easeOutQuint,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.7, -0.6),
                    radius: 1.6,
                    colors: <Color>[
                      Color(0xFFFFBBB8),
                      Color(0xFFF5564E),
                      Color(0xFF490500),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x804E4E4E),
                      blurRadius: 3,
                      spreadRadius: 0.1,
                    ),
                  ],
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
                    Icons.add_comment_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: select[9] ? MediaQuery.of(context).size.height * 0.413 : MediaQuery.of(context).size.height * 0.413 - 80,
            left: select[9] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 + 100,
            duration: const Duration(milliseconds: 666),
            child: FadeTransition(
              opacity: _fadeAnimation[10],
              child: AnimatedContainer(
                width: select[9] ? 150 : 100,
                height: select[9]? 150 : 100,
                duration: const Duration(milliseconds: 666),
                curve: Curves.easeOutQuint,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.7, -0.6),
                    radius: 1.6,
                    colors: <Color>[
                      Color(0xFFFFBBB8),
                      Color(0xFFF5564E),
                      Color(0xFF490500),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x804E4E4E),
                      blurRadius: 3,
                      spreadRadius: 0.1,
                    ),
                  ],
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
                          if(i == 10) {
                            continue;
                          }
                          await _fadeAnimationController[i].reverse();
                        }
                      } else {
                        for(int i = 0; i < _fadeAnimationController.length; i++){
                          if(i == 10) {
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