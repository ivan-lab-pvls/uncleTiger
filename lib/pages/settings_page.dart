import 'package:flutter/material.dart';
import 'package:fortune_tiger_app/pages/home_page.dart';
import 'package:fortune_tiger_app/pages/show_screen.dart';
import 'package:in_app_review/in_app_review.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                  'Settings',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Shojumaru',
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
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
            ),
          ]),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 49, 54, 0),
                  child: InkWell(
                    onTap: () {
                      user.musicOn = !user.musicOn!;
                      setState(() {});
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
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
                            user.musicOn! ? 'Music: ON' : 'Music: OFF',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Shojumaru',
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = const Color(0XffFEBD31),
                            ),
                          ),
                          Text(
                            user.musicOn! ? 'Music: ON' : 'Music: OFF',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'Shojumaru',
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
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
                            builder: (BuildContext context) => const Dataxasdx(
                                linkx:
                                    'https://docs.google.com/document/d/1TckD5njV8kBVzE8ftlYpV5QqTJ4z1ZM4mJKa_jl-Q3Q/edit?usp=sharing')),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
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
                            'Privacy Policy',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Shojumaru',
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = const Color(0XffFEBD31),
                            ),
                          ),
                          const Text(
                            'Privacy Policy',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Shojumaru',
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
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
                            builder: (BuildContext context) => const Dataxasdx(
                                linkx:
                                    'https://docs.google.com/document/d/1C9lJtK-q9hk_v8r-4gNvYIBFV75JjUI_1E9pZ0QQrw4/edit?usp=sharing')),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
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
                            'Terms of Use',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Shojumaru',
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = const Color(0XffFEBD31),
                            ),
                          ),
                          const Text(
                            'Terms of Use',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Shojumaru',
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
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
                      InAppReview.instance
                          .openStoreListing(appStoreId: '6480406826');
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
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
                            'Rate app',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Shojumaru',
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = const Color(0XffFEBD31),
                            ),
                          ),
                          const Text(
                            'Rate app',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Shojumaru',
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
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
    ));
  }
}
