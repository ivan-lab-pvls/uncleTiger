import 'package:flutter/material.dart';
import 'package:fortune_tiger_app/model/level_item.dart';
import 'package:fortune_tiger_app/model/user_item.dart';
import 'package:fortune_tiger_app/pages/collection_page.dart';
import 'package:fortune_tiger_app/pages/final_page.dart';
import 'package:fortune_tiger_app/pages/levels_page.dart';
import 'package:fortune_tiger_app/pages/settings_page.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

UserItem user = UserItem(musicOn: true);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getFromSharedP(() {
      setState(() {});
    });
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
                    fit: BoxFit.cover, image: AssetImage('assets/bg.png'))),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 65),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(alignment: Alignment.center, children: [
                      Image.asset('assets/table.png'),
                      Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 32, top: 100),
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
                                    currentStep: user.keyCount != null
                                        ? user.keyCount! > 6
                                            ? 6
                                            : user.keyCount!
                                        : 0,
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
                                    unselectedGradientColor:
                                        const LinearGradient(
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
                                    child:
                                        Image.asset('assets/progress-key.png')),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 0, 54, 0),
                            child: InkWell(
                              onTap: () {
                                currentLevel = LevelItem();
                                Navigator.of(context).push(
                                  MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          const LevelsPage()),
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
                                    borderRadius: BorderRadius.circular(10)),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Start',
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
                                    const Text(
                                      'Start',
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
                          const SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 0, 54, 0),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          const CollectionPage()),
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
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: <Widget>[
                                        Text(
                                          'Collection',
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
                                        const Text(
                                          'Collection',
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
                                    if (user.keyCount != null &&
                                        user.keyCount! >= 6)
                                      const SizedBox(
                                        width: 9,
                                      ),
                                    if (user.keyCount != null &&
                                        user.keyCount! >= 6)
                                      Image.asset('assets/red.png'),
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
                                Navigator.of(context).push(
                                  MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          const SettingsPage()),
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
                                    borderRadius: BorderRadius.circular(10)),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Settings',
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
                                    const Text(
                                      'Settings',
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
                    ]),
                  ],
                ),
              ),
            ),
          ),
          Image.asset(
            'assets/tiger.png',
            scale: 1.3,
          ),
        ],
      ),
    );
  }
}
