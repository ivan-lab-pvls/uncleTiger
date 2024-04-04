import 'package:flutter/material.dart';
import 'package:fortune_tiger_app/pages/levels_page.dart';
import 'package:fortune_tiger_app/pages/questions_page.dart';

class LevelPage extends StatelessWidget {
  const LevelPage({super.key});

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
            child: Column(children: [
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
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset('assets/btn_back.png')),
                      ),
                      Stack(
                        children: <Widget>[
                          Text(
                            'Level ${currentLevel.levelNum}',
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
                            'Level ${currentLevel.levelNum}',
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
                      const Text(
                        'Settings',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Shojumaru',
                            color: Colors.transparent,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ]),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset('assets/table.png'),
                          Padding(
                            padding: const EdgeInsets.only(top: 90),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 56),
                                  child: SizedBox(
                                    width: 253,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            currentLevel.title ?? 'Level',
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                fontFamily: 'SF Compact',
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(60, 0, 54, 0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute<void>(
                                            builder: (BuildContext context) =>
                                                const QuestionsPage()),
                                      );
                                    },
                                    child: Container(
                                      width: 263,
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xFF680F09),
                                              width: 2),
                                          gradient: const LinearGradient(
                                              colors: [
                                                Color(0xFFF58A22),
                                                Color(0xFFFEBD31),
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Next',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Shojumaru',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 27,
                                              foreground: Paint()
                                                ..style = PaintingStyle.stroke
                                                ..strokeWidth = 6
                                                ..color =
                                                    const Color(0XffFEBD31),
                                            ),
                                          ),
                                          const Text(
                                            'Next',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Shojumaru',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 27,
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
                        ],
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
