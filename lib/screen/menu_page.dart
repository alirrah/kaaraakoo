import 'dart:async';
import 'package:flutter/material.dart';

class menuPage extends StatefulWidget {
  @override
  _menuPageState createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> with TickerProviderStateMixin {
  List<bool> select = [false, false, false, false, false, false, false, false, false, false];
  List<bool> selected = [false, false, false, false, false, false, false, false, false, false];
  final List<AnimationController> _fadeAnimationController = [];
  final List<Animation<double>> _fadeAnimation = [];

  @override
  void initState() {
    super.initState();

    for(int i = 0; i < 11; i++){
      _fadeAnimationController.add(
          AnimationController(
            vsync: this,
            duration: const Duration(milliseconds: 300),
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
          //
          AnimatedPositioned(
            top: selected[0] ? MediaQuery.of(context).size.height * 0.413 - 110 :MediaQuery.of(context).size.height * 0.413 - 20,
            left: selected[0] ? MediaQuery.of(context).size.width * 0.32 + 90 : MediaQuery.of(context).size.width * 0.32 + 60,
            duration: Duration(milliseconds: 300),
            child: AnimatedOpacity(
              opacity: selected[0] ? 1 : 0,
              duration: const Duration(milliseconds: 300),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(-0.5, 0.9),
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
            top: selected[0] ? MediaQuery.of(context).size.height * 0.413 + 90 : MediaQuery.of(context).size.height * 0.413 + 75,
            left: selected[0] ? MediaQuery.of(context).size.width * 0.32 + 170 : MediaQuery.of(context).size.width * 0.32 + 90,
            duration: Duration(milliseconds: 300),
            child: AnimatedOpacity(
              opacity: selected[0] ? 1 : 0,
              duration: const Duration(milliseconds: 300),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(-0.9, -0.5),
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
            top: selected[0] ? MediaQuery.of(context).size.height * 0.413 + 200 : MediaQuery.of(context).size.height * 0.413 + 80,
            left: selected[0] ? MediaQuery.of(context).size.width * 0.32 : MediaQuery.of(context).size.width * 0.32 + 25,
            duration: Duration(milliseconds: 300),
            child: AnimatedOpacity(
              opacity: selected[0] ? 1 : 0,
              duration: const Duration(milliseconds: 300),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.1, -0.9),
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
            top: selected[0] ? MediaQuery.of(context).size.height * 0.413 + 70 : MediaQuery.of(context).size.height * 0.413 + 75,
            left: selected[0] ? MediaQuery.of(context).size.width * 0.32 - 90 : MediaQuery.of(context).size.width * 0.32  - 5,
            duration: Duration(milliseconds: 300),
            child: AnimatedOpacity(
              opacity: selected[0] ? 1 : 0,
              duration: const Duration(milliseconds: 300),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.7, -0.2),
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
            top: selected[0] ? MediaQuery.of(context).size.height * 0.413 - 70 : MediaQuery.of(context).size.height * 0.413,
            left: selected[0] ? MediaQuery.of(context).size.width * 0.32 - 15 : MediaQuery.of(context).size.width * 0.32,
            duration: Duration(milliseconds: 300),
            child: AnimatedOpacity(
              opacity: selected[0] ? 1 : 0,
              duration: const Duration(milliseconds: 300),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.4, 0.8),
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
            top: select[0] ? MediaQuery.of(context).size.height * 0.413 - 250 : MediaQuery.of(context).size.height * 0.413 - 100,
            left: select[0] ? MediaQuery.of(context).size.width * 0.32 - 100 : MediaQuery.of(context).size.width * 0.32 + 50,
            duration: const Duration(milliseconds: 300),
            child: FadeTransition(
              opacity: _fadeAnimation[1],
              child: AnimatedContainer(
                width: select[0] ? 350 : 50,
                height: select[0]? 350 : 50,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0, 1),
                    radius: 1.6,
                    colors: <Color>[
                      Color(0xFFFFBBB8),
                      Color(0xFFF5564E),
                      Color(0xFF490500),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(select[0] ? 350 : 50),
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
                        borderRadius: BorderRadius.circular(select[0] ? 350 : 50),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if(!select[0]){
                      for(int i = 1; i < _fadeAnimationController.length; i++){
                        setState(() => select[i - 1] = true);
                        await _fadeAnimationController[i].reverse();
                      }
                      Timer(
                          const Duration(milliseconds: 100), ()=> setState(() {
                        selected[0] = true;
                      }
                      )
                      );
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
            top: select[1] ? MediaQuery.of(context).size.height * 0.413 - 225 : MediaQuery.of(context).size.height * 0.413 - 75,
            left: select[1] ? MediaQuery.of(context).size.width * 0.32 - 170 : MediaQuery.of(context).size.width * 0.32 - 20,
            duration: const Duration(milliseconds: 300),
            child: FadeTransition(
              opacity: _fadeAnimation[2],
              child: AnimatedContainer(
                width: select[1] ? 370 : 70,
                height: select[1]? 370 : 70,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.7, 0.6),
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
                  borderRadius: BorderRadius.circular(select[1] ? 370 : 70),
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
                        borderRadius: BorderRadius.circular(select[1] ? 370 : 70),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if(!select[1]){
                      for(int i = 1; i < _fadeAnimationController.length; i++){
                        setState(() => select[i - 1] = true);
                        await _fadeAnimationController[i].reverse();
                      }
                      Timer(
                          const Duration(milliseconds: 100), ()=> setState(() {
                        selected[1] = true;
                      }
                      )
                      );
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
            top: select[2] ? MediaQuery.of(context).size.height * 0.413 - 180 : MediaQuery.of(context).size.height * 0.413 - 30,
            left: select[2] ? MediaQuery.of(context).size.width * 0.32 - 250 : MediaQuery.of(context).size.width * 0.32 - 100,
            duration: const Duration(milliseconds: 300),
            child: FadeTransition(
              opacity: _fadeAnimation[3],
              child: AnimatedContainer(
                width: select[2] ? 390 : 90,
                height: select[2]? 390 : 90,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.8, 0.1),
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
                  borderRadius: BorderRadius.circular(select[2] ? 390 : 90),
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
                        borderRadius: BorderRadius.circular(select[2] ? 390 : 90),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if(!select[2]){
                      for(int i = 1; i < _fadeAnimationController.length; i++){
                        setState(() => select[i - 1] = true);
                        await _fadeAnimationController[i].reverse();
                      }
                      Timer(
                          const Duration(milliseconds: 100), ()=> setState(() {
                        selected[2] = true;
                      }
                      )
                      );
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
            top: select[3] ? MediaQuery.of(context).size.height * 0.413 - 80 : MediaQuery.of(context).size.height * 0.413 + 70,
            left: select[3] ? MediaQuery.of(context).size.width * 0.32 - 240 : MediaQuery.of(context).size.width * 0.32 - 90,
            duration: const Duration(milliseconds: 300),
            child: FadeTransition(
              opacity: _fadeAnimation[4],
              child: AnimatedContainer(
                width: select[3] ? 350 : 50,
                height: select[3]? 350 : 50,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.9, -0.4),
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
                  borderRadius: BorderRadius.circular(select[3] ? 350 : 50),
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
                        borderRadius: BorderRadius.circular(select[3] ? 350 : 50),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if(!select[3]){
                      for(int i = 1; i < _fadeAnimationController.length; i++){
                        setState(() => select[i - 1] = true);
                        await _fadeAnimationController[i].reverse();
                      }
                      Timer(
                          const Duration(milliseconds: 100), ()=> setState(() {
                        selected[3] = true;
                      }
                      )
                      );
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
            top: select[4] ? MediaQuery.of(context).size.height * 0.413 - 20 : MediaQuery.of(context).size.height * 0.413 + 130,
            left: select[4] ? MediaQuery.of(context).size.width * 0.32 - 215 : MediaQuery.of(context).size.width * 0.32 - 65,
            duration: const Duration(milliseconds: 300),
            child: FadeTransition(
              opacity: _fadeAnimation[5],
              child: AnimatedContainer(
                width: select[4] ? 370 : 70,
                height: select[4]? 370 : 70,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
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
                  borderRadius: BorderRadius.circular(select[4] ? 370 : 70),
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
                        borderRadius: BorderRadius.circular(select[4] ? 370 : 70),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if(!select[4]){
                      for(int i = 1; i < _fadeAnimationController.length; i++){
                        setState(() => select[i - 1] = true);
                        await _fadeAnimationController[i].reverse();
                      }
                      Timer(
                          const Duration(milliseconds: 100), ()=> setState(() {
                        selected[4] = true;
                      }
                      )
                      );
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
            top: select[5] ? MediaQuery.of(context).size.height * 0.413 + 30 : MediaQuery.of(context).size.height * 0.413 + 180,
            left: select[5] ? MediaQuery.of(context).size.width * 0.32 - 150 : MediaQuery.of(context).size.width * 0.32,
            duration: const Duration(milliseconds: 300),
            child: FadeTransition(
              opacity: _fadeAnimation[6],
              child: AnimatedContainer(
                width: select[5] ? 400 : 100,
                height: select[5]? 400 : 100,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0, -1),
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
                  borderRadius: BorderRadius.circular(select[5] ? 400 : 100),
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
                        borderRadius: BorderRadius.circular(select[5] ? 400 : 100),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if(!select[5]){
                      for(int i = 1; i < _fadeAnimationController.length; i++){
                        setState(() => select[i - 1] = true);
                        await _fadeAnimationController[i].reverse();
                      }
                      Timer(
                          const Duration(milliseconds: 100), ()=> setState(() {
                        selected[5] = true;
                      }
                      )
                      );
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
            top: select[6] ? MediaQuery.of(context).size.height * 0.413 + 30 : MediaQuery.of(context).size.height * 0.413 + 180,
            left: select[6] ? MediaQuery.of(context).size.width * 0.32 - 35 : MediaQuery.of(context).size.width * 0.32 + 115,
            duration: const Duration(milliseconds: 300),
            child: FadeTransition(
              opacity: _fadeAnimation[7],
              child: AnimatedContainer(
                width: select[6] ? 350 : 50,
                height: select[6]? 350 : 50,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(-0.7, -0.7),
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
                  borderRadius: BorderRadius.circular(select[6] ? 350 : 50),
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
                        borderRadius: BorderRadius.circular(select[6] ? 350 : 50),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if(!select[6]){
                      for(int i = 1; i < _fadeAnimationController.length; i++){
                        setState(() => select[i - 1] = true);
                        await _fadeAnimationController[i].reverse();
                      }
                      Timer(
                          const Duration(milliseconds: 100), ()=> setState(() {
                        selected[6] = true;
                      }
                      )
                      );
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
            top: select[7] ? MediaQuery.of(context).size.height * 0.413 - 50 : MediaQuery.of(context).size.height * 0.413 + 100,
            left: select[7] ? MediaQuery.of(context).size.width * 0.32 + 10 : MediaQuery.of(context).size.width * 0.32 + 160,
            duration: const Duration(milliseconds: 300),
            child: FadeTransition(
              opacity: _fadeAnimation[8],
              child: AnimatedContainer(
                width: select[7] ? 370 : 70,
                height: select[7]? 370 : 70,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(-0.7, -0.6),
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
                  borderRadius: BorderRadius.circular(select[7] ? 370 : 70),
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
                        borderRadius: BorderRadius.circular(select[7] ? 370 : 70),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if(!select[7]){
                      for(int i = 1; i < _fadeAnimationController.length; i++){
                        setState(() => select[i - 1] = true);
                        await _fadeAnimationController[i].reverse();
                      }
                      Timer(
                          const Duration(milliseconds: 100), ()=> setState(() {
                        selected[7] = true;
                      }
                      )
                      );
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
            top: select[8] ? MediaQuery.of(context).size.height * 0.413 - 130 : MediaQuery.of(context).size.height * 0.413 + 20,
            left: select[8] ? MediaQuery.of(context).size.width * 0.32 + 30 : MediaQuery.of(context).size.width * 0.32 + 180,
            duration: const Duration(milliseconds: 300),
            child: FadeTransition(
              opacity: _fadeAnimation[9],
              child: AnimatedContainer(
                width: select[8] ? 350 : 50,
                height: select[8]? 350 : 50,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(-0.9, 0.4),
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
                  borderRadius: BorderRadius.circular(select[8] ? 350 : 50),
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
                        borderRadius: BorderRadius.circular(select[8] ? 350 : 50),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if(!select[8]){
                      for(int i = 1; i < _fadeAnimationController.length; i++){
                        setState(() => select[i - 1] = true);
                        await _fadeAnimationController[i].reverse();
                      }
                      Timer(
                          const Duration(milliseconds: 100), ()=> setState(() {
                        selected[8] = true;
                      }
                      )
                      );
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
            top: select[9] ? MediaQuery.of(context).size.height * 0.413 - 230 : MediaQuery.of(context).size.height * 0.413 - 80,
            left: select[9] ? MediaQuery.of(context).size.width * 0.32 - 50 : MediaQuery.of(context).size.width * 0.32 + 100,
            duration: const Duration(milliseconds: 300),
            child: FadeTransition(
              opacity: _fadeAnimation[10],
              child: AnimatedContainer(
                width: select[9] ? 400 : 100,
                height: select[9]? 400 : 100,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(-0.5, 0.8),
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
                  borderRadius: BorderRadius.circular(select[9] ? 400 : 100),
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
                        borderRadius: BorderRadius.circular(select[9] ? 400 : 100),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if(!select[9]){
                      for(int i = 1; i < _fadeAnimationController.length; i++){
                        setState(() => select[i - 1] = true);
                        await _fadeAnimationController[i].reverse();
                      }
                      Timer(
                          const Duration(milliseconds: 100), ()=> setState(() {
                        selected[9] = true;
                      }
                      )
                      );
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
          Positioned(
            top: MediaQuery.of(context).size.height * 0.413 + 15,
            left: MediaQuery.of(context).size.width * 0.32 + 15,
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  radius: 0.5,
                  colors: <Color>[
                    Color(0xFFFFBBB8),
                    Color(0xFFF5564E),
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
              child: GestureDetector(
                child: Center(
                  child: !check(100) ? Icon(
                    selected[0] ? Icons.print : selected[1] ? Icons.access_alarm : selected[2] ? Icons.accessibility_new_sharp : selected[3] ? Icons.account_balance : selected[4] ? Icons.add_a_photo_rounded : selected[5] ? Icons.add_circle_outline : selected[6] ? Icons.airport_shuttle : selected[7] ? Icons.ad_units_sharp : selected[8] ? Icons.add_comment_rounded : Icons.add_shopping_cart_sharp,
                    size: 80,
                    color: Colors.white,
                  ) : Image.asset(
                    color: Colors.white,
                    "asset/logo.png",
                    height: 100,
                    width: 100,
                  ),
                ),
                onTap: ()async{
                  for(int i = 0; i < select.length; i++){
                    if(select[i] == true){
                      setState(() => selected[i] = false);
                      Timer(
                          const Duration(milliseconds: 300), ()async{
                        for(int j = 1; j < _fadeAnimationController.length; j++){
                            setState(() => select[j - 1] = false);
                          await _fadeAnimationController[j].forward();
                        }
                      }
                      );
                    }
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    for(int i = 0; i < 11; i++){
      _fadeAnimationController[i].dispose();
    }
    super.dispose();
  }

  bool check(int number){
    for(int i = 0; i < selected.length; i++){
      if(i == number){
        continue;
      }
      if(selected[i]) {
        return false;
      }
    }
    return true;
  }
}