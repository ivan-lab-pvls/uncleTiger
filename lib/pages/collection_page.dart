import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fortune_tiger_app/pages/final_page.dart';
import 'package:fortune_tiger_app/pages/home_page.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({super.key});

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  List<String> images = [
    'assets/collection/card1.png',
    'assets/collection/card2.png',
    'assets/collection/card3.png',
    'assets/collection/card4.png',
    'assets/collection/card5.png',
    'assets/collection/card6.png',
    'assets/collection/card7.png',
    'assets/collection/card8.png',
    'assets/collection/card9.png',
    'assets/collection/card10.png',
    'assets/collection/card11.png',
    'assets/collection/card12.png',
    'assets/collection/card13.png',
    'assets/collection/card14.png',
    'assets/collection/card15.png',
    'assets/collection/card16.png',
    'assets/collection/card17.png',
    'assets/collection/card18.png',
    'assets/collection/card19.png',
    'assets/collection/card20.png',
    'assets/collection/card21.png',
    'assets/collection/card22.png',
    'assets/collection/card23.png',
    'assets/collection/card24.png',
    'assets/collection/card25.png',
    'assets/collection/card26.png',
    'assets/collection/card27.png',
    'assets/collection/card28.png',
    'assets/collection/card29.png',
    'assets/collection/card30.png',
    'assets/collection/card31.png',
    'assets/collection/card32.png',
    'assets/collection/card33.png',
    'assets/collection/card34.png',
    'assets/collection/card35.png',
    'assets/collection/card36.png',
    'assets/collection/card37.png',
    'assets/collection/card38.png',
    'assets/collection/card39.png',
    'assets/collection/card40.png',
  ];
  List<String> newImages = [];
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
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const HomePage()),
                                (route) => false);
                          },
                          child: Image.asset('assets/btn_back.png')),
                    ),
                    Stack(
                      children: <Widget>[
                        Text(
                          'Collection',
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
                          'Collection',
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
                    const Text(
                      'Sett',
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 16, 32, 22),
                      child: InkWell(
                        onTap: () {
                          if (user.keyCount != null && user.keyCount! >= 6) {
                            showDialog(
                                barrierDismissible: false,
                                barrierColor: Colors.black.withOpacity(0.7),
                                context: context,
                                builder: (context) {
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Dialog(
                                        backgroundColor: Colors.transparent,
                                        elevation: 0,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 24),
                                              child: Stack(
                                                children: <Widget>[
                                                  Text(
                                                    'New fortune\ncards!',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontFamily: 'Shojumaru',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 24,
                                                      foreground: Paint()
                                                        ..style =
                                                            PaintingStyle.stroke
                                                        ..strokeWidth = 6
                                                        ..color = const Color(
                                                            0XffFEBD31),
                                                    ),
                                                  ),
                                                  // Solid text as fill.
                                                  const Text(
                                                    'New fortune\ncards!',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontFamily: 'Shojumaru',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 24,
                                                      color: Color(0xFF680F09),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Image.asset(
                                                'assets/dialog-chest.png'),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      60, 35, 65, 0),
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                  newImages = [];
                                                  for (var i = 0; i < 3; i++) {
                                                    newImages.add(images
                                                        .elementAt(Random()
                                                            .nextInt(39)));
                                                  }

                                                  showDialog(
                                                      barrierDismissible: true,
                                                      barrierColor: Colors.black
                                                          .withOpacity(0.7),
                                                      context: context,
                                                      builder: (context) {
                                                        return Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Dialog(
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              elevation: 0,
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        bottom:
                                                                            50),
                                                                    child:
                                                                        Stack(
                                                                      children: <Widget>[
                                                                        Text(
                                                                          'New fortune\ncards!',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style:
                                                                              TextStyle(
                                                                            fontFamily:
                                                                                'Shojumaru',
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                            fontSize:
                                                                                24,
                                                                            foreground: Paint()
                                                                              ..style = PaintingStyle.stroke
                                                                              ..strokeWidth = 6
                                                                              ..color = const Color(0XffFEBD31),
                                                                          ),
                                                                        ),
                                                                        const Text(
                                                                          'New fortune\ncards!',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style:
                                                                              TextStyle(
                                                                            fontFamily:
                                                                                'Shojumaru',
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                            fontSize:
                                                                                24,
                                                                            color:
                                                                                Color(0xFF680F09),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        bottom:
                                                                            50),
                                                                    child:
                                                                        getNewImages(),
                                                                  ),
                                                                  InkWell(
                                                                    onTap: () {
                                                                      for (var image
                                                                          in newImages) {
                                                                        user.images ??=
                                                                            [];
                                                                        user.images!
                                                                            .add(image);
                                                                      }
                                                                      user.keyCount =
                                                                          0;
                                                                      addToSharedP();
                                                                      Navigator.pop(
                                                                          context);
                                                                      setState(
                                                                          () {});
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          263,
                                                                      padding:
                                                                          const EdgeInsets
                                                                              .all(
                                                                              8),
                                                                      decoration: BoxDecoration(
                                                                          border: Border.all(color: const Color(0xFF680F09), width: 2),
                                                                          gradient: const LinearGradient(colors: [
                                                                            Color(0xFFF58A22),
                                                                            Color(0xFFFEBD31),
                                                                          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                                                                          borderRadius: BorderRadius.circular(10)),
                                                                      child:
                                                                          const Text(
                                                                        'OKAY',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Shojumaru',
                                                                            color: Color(
                                                                                0xFF680F09),
                                                                            fontSize:
                                                                                27,
                                                                            fontWeight:
                                                                                FontWeight.w400),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        );
                                                      });
                                                },
                                                child: Container(
                                                  width: 263,
                                                  padding:
                                                      const EdgeInsets.all(8),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: const Color(
                                                              0xFF680F09),
                                                          width: 2),
                                                      gradient:
                                                          const LinearGradient(
                                                              colors: [
                                                            Color(0xFFF58A22),
                                                            Color(0xFFFEBD31),
                                                          ],
                                                              begin: Alignment
                                                                  .topCenter,
                                                              end: Alignment
                                                                  .bottomCenter),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: const Text(
                                                    'Continue',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily: 'Shojumaru',
                                                        color:
                                                            Color(0xFF680F09),
                                                        fontSize: 27,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                });
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFFFEBD31),
                                    Color(0xFFF58A22),
                                  ]),
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFF871B13),
                                      Color(0xFFC50802),
                                      Color(0xFFCA0D07),
                                      Color(0xFFFA4007),
                                    ]),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (user.keyCount == null ||
                                      user.keyCount! < 6)
                                    Image.asset('assets/closed-chest.png'),
                                  if (user.keyCount == null ||
                                      user.keyCount! < 6)
                                    const SizedBox(
                                      width: 16,
                                    ),
                                  if (user.keyCount == null ||
                                      user.keyCount! < 6)
                                    Flexible(
                                      child: Stack(
                                        children: <Widget>[
                                          Text(
                                            'Collect keys open chest',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Shojumaru',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 24,
                                              foreground: Paint()
                                                ..style = PaintingStyle.stroke
                                                ..strokeWidth = 6
                                                ..color =
                                                    const Color(0XffFEBD31),
                                            ),
                                          ),
                                          const Text(
                                            'Collect keys open chest',
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
                                  if (user.keyCount != null &&
                                      user.keyCount! >= 6)
                                    Image.asset('assets/open-chest.png'),
                                  if (user.keyCount != null &&
                                      user.keyCount! >= 6)
                                    const SizedBox(
                                      width: 16,
                                    ),
                                  if (user.keyCount != null &&
                                      user.keyCount! >= 6)
                                    Flexible(
                                      child: Stack(
                                        children: <Widget>[
                                          Text(
                                            'OPEN NOW!',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Shojumaru',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 24,
                                              foreground: Paint()
                                                ..style = PaintingStyle.stroke
                                                ..strokeWidth = 6
                                                ..color =
                                                    const Color(0XffFEBD31),
                                            ),
                                          ),
                                          const Text(
                                            'OPEN NOW!!',
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
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 20),
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
                                          borderRadius:
                                              BorderRadius.circular(12)),
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
                                        selectedGradientColor:
                                            const LinearGradient(
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
                                        child: Image.asset(
                                            'assets/progress-key.png')),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ),
                    getImages(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getImages() {
    List<Widget> list = [];
    for (var image in images) {
      if (user.images != null &&
          user.images!.where((element) => element == image).isNotEmpty) {
        list.add(Image.asset(image));
      } else {
        list.add(Image.asset('assets/card_locked.png'));
      }
    }
    return Wrap(
      spacing: 39,
      runSpacing: 22,
      children: list,
    );
  }

  Widget getNewImages() {
    List<Widget> list = [];
    for (var image in newImages) {
      list.add(Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomRight,
        children: [
          Image.asset(image),
          if (user.images != null &&
              user.images!.where((element) => element == image).isNotEmpty)
            Positioned(
              right: -10,
              bottom: -30,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xFF780000), width: 2),
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                        colors: [Color(0xFFFF0000), Color(0xFF990000)])),
                child: Stack(
                  children: <Widget>[
                    Text(
                      user.images!
                          .where((element) => element == image)
                          .length
                          .toString(),
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
                      user.images!
                          .where((element) => element == image)
                          .length
                          .toString(),
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
            )
        ],
      ));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: list,
    );
  }
}
