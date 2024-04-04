import 'package:flutter/material.dart';
import 'package:fortune_tiger_app/pages/home_page.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/bg2.png'))),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 65),
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Text(
                              'Hello!',
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
                            const Text(
                              'Hello!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Shojumaru',
                                fontWeight: FontWeight.w700,
                                fontSize: 44,
                                color: Color(0xFF680F09),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (page == 0)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 65, 16, 32),
                          child: Image.asset('assets/onBoarding1.png'),
                        ),
                      if (page == 1)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 65, 16, 32),
                          child: Image.asset('assets/onBoarding2.png'),
                        ),
                      if (page == 0)
                        const Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 16, 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  'Answer questions correctly in levels to gt more keys',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (page == 1)
                        const Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 16, 117),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  'Open chests to collect unique cards! You get 2 keys for every correct answer you gave',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 32),
              child: InkWell(
                onTap: () {
                  if (page == 0) {
                    page = 1;
                    setState(() {});
                  } else {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => const HomePage()),
                    );
                  }
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xFF680F09), width: 2),
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
                        page == 0 ? 'Continue' : 'Start',
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
                        page == 0 ? 'Continue' : 'Start',
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
    );
  }
}
