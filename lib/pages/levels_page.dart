import 'package:flutter/material.dart';
import 'package:fortune_tiger_app/model/level_item.dart';
import 'package:fortune_tiger_app/pages/level_page.dart';

LevelItem currentLevel = LevelItem();
LevelItem level1 = LevelItem(
    isDone: false,
    title:
        'Many slot machines use variable ratio reinforcement schedules, meaning the player receives rewards unpredictably after a random number of plays.',
    levelNum: 1);
LevelItem level2 = LevelItem(
    isDone: false,
    title:
        'In blackjack, the objective is to beat the dealer\'s hand without exceeding a total of 21.',
    levelNum: 2);
LevelItem level3 = LevelItem(
    isDone: false,
    title:
        'Roulette is a game where players can bet on various outcomes like a specific number, color, or range of numbers.',
    levelNum: 3);
LevelItem level4 = LevelItem(
    isDone: false,
    title:
        'In poker, players wager on the strength of their hand in comparison to others, leading to strategic and psychological gameplay.',
    levelNum: 4);
LevelItem level5 = LevelItem(
    isDone: false,
    title:
        'Baccarat is a card game where players can bet on either the player\'s or the banker\'s hand or a tie.',
    levelNum: 5);
LevelItem level6 = LevelItem(
    isDone: false,
    title:
        'Craps is a dice game where players make bets on the outcome of the roll or a series of rolls.',
    levelNum: 6);
LevelItem level7 = LevelItem(
    isDone: false,
    title:
        'In Pai Gow Poker, players are dealt seven cards and must create two poker hands: a five-card hand and a two-card hand, both of which must beat the dealer\'s hands to win.',
    levelNum: 7);

class LevelsPage extends StatefulWidget {
  const LevelsPage({super.key});

  @override
  State<LevelsPage> createState() => _LevelsPageState();
}

class _LevelsPageState extends State<LevelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/bg2.png'))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                        alignment: Alignment.center,
                        children: <Widget>[
                          Text(
                            'Levels',
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
                            'Levels',
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
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            level1.isDone != null && level1.isDone!
                                ? InkWell(
                                    onTap: () {
                                      currentLevel = level1;
                                      setState(() {});
                                    },
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset('assets/solved.png'),
                                        Stack(
                                          alignment: Alignment.center,
                                          children: <Widget>[
                                            Text(
                                              '1',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Shojumaru',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 47,
                                                foreground: Paint()
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 6
                                                  ..color =
                                                      const Color(0XffFEBD31),
                                              ),
                                            ),
                                            const Text(
                                              '1',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Shojumaru',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 47,
                                                color: Color(0xFF680F09),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                : InkWell(
                                    onTap: () {
                                      currentLevel = level1;
                                      setState(() {});
                                    },
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset('assets/current.png'),
                                        Stack(
                                          alignment: Alignment.center,
                                          children: <Widget>[
                                            Text(
                                              '1',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Shojumaru',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 47,
                                                foreground: Paint()
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 6
                                                  ..color =
                                                      const Color(0XffFEBD31),
                                              ),
                                            ),
                                            const Text(
                                              '1',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Shojumaru',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 47,
                                                color: Color(0xFF680F09),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                            const SizedBox(
                              width: 14,
                            ),
                            level2.isDone != null && level2.isDone!
                                ? InkWell(
                                    onTap: () {
                                      currentLevel = level2;
                                      setState(() {});
                                    },
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset('assets/solved.png'),
                                        Stack(
                                          alignment: Alignment.center,
                                          children: <Widget>[
                                            Text(
                                              '2',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Shojumaru',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 47,
                                                foreground: Paint()
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 6
                                                  ..color =
                                                      const Color(0XffFEBD31),
                                              ),
                                            ),
                                            const Text(
                                              '2',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Shojumaru',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 47,
                                                color: Color(0xFF680F09),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                : level1.isDone != null && level1.isDone!
                                    ? InkWell(
                                        onTap: () {
                                          currentLevel = level2;
                                          setState(() {});
                                        },
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset('assets/current.png'),
                                            Stack(
                                              alignment: Alignment.center,
                                              children: <Widget>[
                                                Text(
                                                  '2',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'Shojumaru',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 47,
                                                    foreground: Paint()
                                                      ..style =
                                                          PaintingStyle.stroke
                                                      ..strokeWidth = 6
                                                      ..color = const Color(
                                                          0XffFEBD31),
                                                  ),
                                                ),
                                                const Text(
                                                  '2',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'Shojumaru',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 47,
                                                    color: Color(0xFF680F09),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    : Image.asset('assets/closed.png'),
                            const SizedBox(
                              width: 14,
                            ),
                            level3.isDone != null && level3.isDone!
                                ? InkWell(
                                    onTap: () {
                                      currentLevel = level3;
                                      setState(() {});
                                    },
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset('assets/solved.png'),
                                        Stack(
                                          alignment: Alignment.center,
                                          children: <Widget>[
                                            Text(
                                              '3',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Shojumaru',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 47,
                                                foreground: Paint()
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 6
                                                  ..color =
                                                      const Color(0XffFEBD31),
                                              ),
                                            ),
                                            const Text(
                                              '3',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Shojumaru',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 47,
                                                color: Color(0xFF680F09),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                : level2.isDone != null && level2.isDone!
                                    ? InkWell(
                                        onTap: () {
                                          currentLevel = level3;
                                          setState(() {});
                                        },
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset('assets/current.png'),
                                            Stack(
                                              alignment: Alignment.center,
                                              children: <Widget>[
                                                Text(
                                                  '3',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'Shojumaru',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 47,
                                                    foreground: Paint()
                                                      ..style =
                                                          PaintingStyle.stroke
                                                      ..strokeWidth = 6
                                                      ..color = const Color(
                                                          0XffFEBD31),
                                                  ),
                                                ),
                                                const Text(
                                                  '3',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'Shojumaru',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 47,
                                                    color: Color(0xFF680F09),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    : Image.asset('assets/closed.png'),
                          ],
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            level4.isDone != null && level4.isDone!
                                ? InkWell(
                                    onTap: () {
                                      currentLevel = level4;
                                      setState(() {});
                                    },
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset('assets/solved.png'),
                                        Stack(
                                          alignment: Alignment.center,
                                          children: <Widget>[
                                            Text(
                                              '4',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Shojumaru',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 47,
                                                foreground: Paint()
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 6
                                                  ..color =
                                                      const Color(0XffFEBD31),
                                              ),
                                            ),
                                            const Text(
                                              '4',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Shojumaru',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 47,
                                                color: Color(0xFF680F09),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                : level3.isDone != null && level3.isDone!
                                    ? InkWell(
                                        onTap: () {
                                          currentLevel = level4;
                                          setState(() {});
                                        },
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset('assets/current.png'),
                                            Stack(
                                              alignment: Alignment.center,
                                              children: <Widget>[
                                                Text(
                                                  '4',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'Shojumaru',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 47,
                                                    foreground: Paint()
                                                      ..style =
                                                          PaintingStyle.stroke
                                                      ..strokeWidth = 6
                                                      ..color = const Color(
                                                          0XffFEBD31),
                                                  ),
                                                ),
                                                const Text(
                                                  '4',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'Shojumaru',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 47,
                                                    color: Color(0xFF680F09),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    : Image.asset('assets/closed.png'),
                            const SizedBox(
                              width: 14,
                            ),
                            level5.isDone != null && level5.isDone!
                                ? InkWell(
                                    onTap: () {
                                      currentLevel = level5;
                                      setState(() {});
                                    },
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset('assets/solved.png'),
                                        Stack(
                                          alignment: Alignment.center,
                                          children: <Widget>[
                                            Text(
                                              '5',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Shojumaru',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 47,
                                                foreground: Paint()
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 6
                                                  ..color =
                                                      const Color(0XffFEBD31),
                                              ),
                                            ),
                                            const Text(
                                              '5',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Shojumaru',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 47,
                                                color: Color(0xFF680F09),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                : level4.isDone != null && level4.isDone!
                                    ? InkWell(
                                        onTap: () {
                                          currentLevel = level5;
                                          setState(() {});
                                        },
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset('assets/current.png'),
                                            Stack(
                                              alignment: Alignment.center,
                                              children: <Widget>[
                                                Text(
                                                  '5',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'Shojumaru',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 47,
                                                    foreground: Paint()
                                                      ..style =
                                                          PaintingStyle.stroke
                                                      ..strokeWidth = 6
                                                      ..color = const Color(
                                                          0XffFEBD31),
                                                  ),
                                                ),
                                                const Text(
                                                  '5',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'Shojumaru',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 47,
                                                    color: Color(0xFF680F09),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    : Image.asset('assets/closed.png'),
                            const SizedBox(
                              width: 14,
                            ),
                            level6.isDone != null && level6.isDone!
                                ? InkWell(
                                    onTap: () {
                                      currentLevel = level6;
                                      setState(() {});
                                    },
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset('assets/solved.png'),
                                        Stack(
                                          alignment: Alignment.center,
                                          children: <Widget>[
                                            Text(
                                              '6',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Shojumaru',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 47,
                                                foreground: Paint()
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 6
                                                  ..color =
                                                      const Color(0XffFEBD31),
                                              ),
                                            ),
                                            const Text(
                                              '6',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Shojumaru',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 47,
                                                color: Color(0xFF680F09),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                : level5.isDone != null && level5.isDone!
                                    ? InkWell(
                                        onTap: () {
                                          currentLevel = level6;
                                          setState(() {});
                                        },
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset('assets/current.png'),
                                            Stack(
                                              alignment: Alignment.center,
                                              children: <Widget>[
                                                Text(
                                                  '6',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'Shojumaru',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 47,
                                                    foreground: Paint()
                                                      ..style =
                                                          PaintingStyle.stroke
                                                      ..strokeWidth = 6
                                                      ..color = const Color(
                                                          0XffFEBD31),
                                                  ),
                                                ),
                                                const Text(
                                                  '6',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'Shojumaru',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 47,
                                                    color: Color(0xFF680F09),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    : Image.asset('assets/closed.png'),
                          ],
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            level7.isDone != null && level7.isDone!
                                ? InkWell(
                                    onTap: () {
                                      currentLevel = level7;
                                      setState(() {});
                                    },
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset('assets/solved.png'),
                                        Stack(
                                          alignment: Alignment.center,
                                          children: <Widget>[
                                            Text(
                                              '7',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Shojumaru',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 47,
                                                foreground: Paint()
                                                  ..style = PaintingStyle.stroke
                                                  ..strokeWidth = 6
                                                  ..color =
                                                      const Color(0XffFEBD31),
                                              ),
                                            ),
                                            const Text(
                                              '7',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Shojumaru',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 47,
                                                color: Color(0xFF680F09),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                : level6.isDone != null && level6.isDone!
                                    ? InkWell(
                                        onTap: () {
                                          currentLevel = level7;
                                          setState(() {});
                                        },
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset('assets/current.png'),
                                            Stack(
                                              alignment: Alignment.center,
                                              children: <Widget>[
                                                Text(
                                                  '7',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'Shojumaru',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 47,
                                                    foreground: Paint()
                                                      ..style =
                                                          PaintingStyle.stroke
                                                      ..strokeWidth = 6
                                                      ..color = const Color(
                                                          0XffFEBD31),
                                                  ),
                                                ),
                                                const Text(
                                                  '7',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'Shojumaru',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 47,
                                                    color: Color(0xFF680F09),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    : Image.asset('assets/closed.png'),
                            const SizedBox(
                              width: 14,
                            ),
                            InkWell(
                                onTap: () {
                                  if (level7.isDone!) {
                                    showLaterDialog(context);
                                  }
                                },
                                child: Image.asset('assets/closed.png')),
                            const SizedBox(
                              width: 14,
                            ),
                            InkWell(
                                onTap: () {
                                  if (level7.isDone!) {
                                    showLaterDialog(context);
                                  }
                                },
                                child: Image.asset('assets/closed.png')),
                          ],
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                onTap: () {
                                  if (level7.isDone!) {
                                    showLaterDialog(context);
                                  }
                                },
                                child: Image.asset('assets/closed.png')),
                            const SizedBox(
                              width: 14,
                            ),
                            InkWell(
                                onTap: () {
                                  if (level7.isDone!) {
                                    showLaterDialog(context);
                                  }
                                },
                                child: Image.asset('assets/closed.png')),
                            const SizedBox(
                              width: 14,
                            ),
                            InkWell(
                                onTap: () {
                                  if (level7.isDone!) {
                                    showLaterDialog(context);
                                  }
                                },
                                child: Image.asset('assets/closed.png')),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 70),
                          child: InkWell(
                            onTap: () {
                              if (currentLevel.levelNum != null) {
                                Navigator.of(context).push(
                                  MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          const LevelPage()),
                                );
                              }
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
                                    currentLevel.levelNum != null
                                        ? 'Level ${currentLevel.levelNum}'
                                        : 'Choose level',
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
                                    currentLevel.levelNum != null
                                        ? 'Level ${currentLevel.levelNum}'
                                        : 'Choose level',
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
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  void showLaterDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierColor: Colors.black.withOpacity(0.7),
        builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Dialog(
                backgroundColor: Colors.transparent,
                elevation: 0,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Text(
                      'Try later!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Shojumaru',
                        fontWeight: FontWeight.w700,
                        fontSize: 47,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 6
                          ..color = const Color(0XffFEBD31),
                      ),
                    ),
                    const Text(
                      'Try later!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Shojumaru',
                        fontWeight: FontWeight.w700,
                        fontSize: 47,
                        color: Color(0xFF680F09),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }
}
