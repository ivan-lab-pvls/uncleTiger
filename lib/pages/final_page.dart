import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fortune_tiger_app/model/level_item.dart';
import 'package:fortune_tiger_app/model/user_item.dart';
import 'package:fortune_tiger_app/pages/home_page.dart';
import 'package:fortune_tiger_app/pages/level_page.dart';
import 'package:fortune_tiger_app/pages/levels_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({super.key, required this.keysCount});
  final int keysCount;

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/bg2.png'))),
            child: Column(children: <Widget>[
              Container(
                height: 141,
                padding: const EdgeInsets.only(top: 40),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xFFCA0D07),
                      Color(0xFFFA4007),
                      Color(0xFFC50802)
                    ])),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Text(
                        widget.keysCount == 0 ? 'Try later!' : 'Well done!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Shojumaru',
                          fontWeight: FontWeight.w700,
                          fontSize: 27,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 6
                            ..color = const Color(0XffFEBD31),
                        ),
                      ),
                      Text(
                        widget.keysCount == 0 ? 'Try later!' : 'Well done!',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'Shojumaru',
                          fontWeight: FontWeight.w700,
                          fontSize: 27,
                          color: Color(0xFF680F09),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 66),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Text(
                                  '+${widget.keysCount}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Shojumaru',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 44,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 6
                                      ..color = const Color(0XffFEBD31),
                                  ),
                                ),
                                Text(
                                  '+${widget.keysCount}',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontFamily: 'Shojumaru',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 44,
                                    color: Color(0xFF680F09),
                                  ),
                                ),
                              ],
                            ),
                            Image.asset('assets/key.png')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 66, top: 24),
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.centerLeft,
                          children: [
                            Container(
                              width: 222.0,
                              height: 21,
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFFD092),
                                  borderRadius: BorderRadius.circular(12)),
                              child: StepProgressIndicator(
                                totalSteps: 6,
                                currentStep:
                                    user.keyCount! > 6 ? 6 : user.keyCount!,
                                size: 15,
                                padding: 0,
                                roundedEdges: const Radius.circular(12),
                                selectedGradientColor: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFFF58A22),
                                    Color(0xFFFEBD31)
                                  ],
                                ),
                                unselectedGradientColor: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFFC50802),
                                    Color(0xFFFA4007),
                                    Color(0xFFCA0D07),
                                    Color(0xFF871B13),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                                left: -10,
                                child: Image.asset('assets/progress-key.png')),
                          ],
                        ),
                      ),
                      if (currentLevel.levelNum != null &&
                          currentLevel.levelNum! < 7)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(60, 0, 54, 0),
                          child: InkWell(
                            onTap: () {
                              if (currentLevel.levelNum == level1.levelNum) {
                                currentLevel = level2;
                              } else if (currentLevel.levelNum ==
                                  level2.levelNum) {
                                currentLevel = level3;
                              } else if (currentLevel.levelNum ==
                                  level3.levelNum) {
                                currentLevel = level4;
                              } else if (currentLevel.levelNum ==
                                  level4.levelNum) {
                                currentLevel = level5;
                              } else if (currentLevel.levelNum ==
                                  level5.levelNum) {
                                currentLevel = level6;
                              } else if (currentLevel.levelNum ==
                                  level6.levelNum) {
                                currentLevel = level7;
                              }
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const LevelPage()),
                              );
                            },
                            child: Container(
                              width: 263,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFF680F09), width: 2),
                                  gradient: const LinearGradient(
                                      colors: [
                                        Color(0xFFF58A22),
                                        Color(0xFFFEBD31),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Text(
                                    'Next',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Shojumaru',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24,
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 6
                                        ..color = const Color(0XffFEBD31),
                                    ),
                                  ),
                                  const Text(
                                    'Next',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Shojumaru',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24,
                                      color: Color(0xFF680F09),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 0, 54, 0),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const HomePage()),
                            );
                          },
                          child: Container(
                            width: 263,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xFF680F09), width: 2),
                                gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFFF58A22),
                                      Color(0xFFFEBD31),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                                borderRadius: BorderRadius.circular(10)),
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Text(
                                  'Menu',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Shojumaru',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 6
                                      ..color = const Color(0XffFEBD31),
                                  ),
                                ),
                                const Text(
                                  'Menu',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Shojumaru',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                    color: Color(0xFF680F09),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          Positioned(
            bottom: -60,
            child: Image.asset(
              'assets/tiger.png',
              scale: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> addToSharedP() async {
  final prefs = await SharedPreferences.getInstance();
  // await prefs.clear();
  String rawJson1 = jsonEncode(level1.toJson());
  prefs.setString('level1', rawJson1);

  String rawJson2 = jsonEncode(level2.toJson());
  prefs.setString('level2', rawJson2);

  String rawJson3 = jsonEncode(level3.toJson());
  prefs.setString('level3', rawJson3);

  String rawJson4 = jsonEncode(level4.toJson());
  prefs.setString('level4', rawJson4);

  String rawJson5 = jsonEncode(level5.toJson());
  prefs.setString('level5', rawJson5);

  String rawJson6 = jsonEncode(level6.toJson());
  prefs.setString('level6', rawJson6);

  String rawJson7 = jsonEncode(level7.toJson());
  prefs.setString('level7', rawJson7);

  String rawJson8 = jsonEncode(user.toJson());
  prefs.setString('user', rawJson8);
}

void getFromSharedP(Function() callback) async {
  final prefs = await SharedPreferences.getInstance();
  final rawJson1 = prefs.getString('level1') ?? '';
  final rawJson2 = prefs.getString('level2') ?? '';
  final rawJson3 = prefs.getString('level3') ?? '';
  final rawJson4 = prefs.getString('level4') ?? '';
  final rawJson5 = prefs.getString('level5') ?? '';
  final rawJson6 = prefs.getString('level6') ?? '';
  final rawJson7 = prefs.getString('level7') ?? '';
  final rawJson8 = prefs.getString('user') ?? '';
  Map<String, dynamic> map1 = {};
  Map<String, dynamic> map2 = {};
  Map<String, dynamic> map3 = {};
  Map<String, dynamic> map4 = {};
  Map<String, dynamic> map5 = {};
  Map<String, dynamic> map6 = {};
  Map<String, dynamic> map7 = {};
  Map<String, dynamic> map8 = {};
  if (rawJson1.isNotEmpty) {
    map1 = jsonDecode(rawJson1);
  }
  if (rawJson2.isNotEmpty) {
    map2 = jsonDecode(rawJson2);
  }
  if (rawJson3.isNotEmpty) {
    map3 = jsonDecode(rawJson3);
  }
  if (rawJson4.isNotEmpty) {
    map4 = jsonDecode(rawJson4);
  }
  if (rawJson5.isNotEmpty) {
    map5 = jsonDecode(rawJson5);
  }
  if (rawJson6.isNotEmpty) {
    map6 = jsonDecode(rawJson6);
  }
  if (rawJson7.isNotEmpty) {
    map7 = jsonDecode(rawJson7);
  }
  if (rawJson8.isNotEmpty) {
    map8 = jsonDecode(rawJson8);
  }
  if (map1.isNotEmpty) {
    level1 = LevelItem.fromJson(map1);
  }
  if (map2.isNotEmpty) {
    level2 = LevelItem.fromJson(map2);
  }
  if (map3.isNotEmpty) {
    level3 = LevelItem.fromJson(map3);
  }
  if (map4.isNotEmpty) {
    level4 = LevelItem.fromJson(map4);
  }
  if (map5.isNotEmpty) {
    level5 = LevelItem.fromJson(map5);
  }
  if (map6.isNotEmpty) {
    level6 = LevelItem.fromJson(map6);
  }
  if (map7.isNotEmpty) {
    level7 = LevelItem.fromJson(map7);
  }
  if (map8.isNotEmpty) {
    user = UserItem.fromJson(map8);
  }
  callback();
}
