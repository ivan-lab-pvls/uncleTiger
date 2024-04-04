import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Dataxasd extends StatelessWidget {
  final String link;

  const Dataxasd({Key? key, required this.link}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(link)),
        ),
      ),
    );
  }
}

class Dataxasdx extends StatelessWidget {
  final String linkx;

  const Dataxasdx({Key? key, required this.linkx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        bottom: false,
        child: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(linkx)),
        ),
      ),
    );
  }
}
