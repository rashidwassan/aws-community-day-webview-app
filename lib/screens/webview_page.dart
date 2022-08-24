import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AWSRegistrationWebView extends StatefulWidget {
  const AWSRegistrationWebView({Key? key}) : super(key: key);

  @override
  AWSRegistrationWebViewState createState() => AWSRegistrationWebViewState();
}

class AWSRegistrationWebViewState extends State<AWSRegistrationWebView> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 1,
          backgroundColor: Colors.white,
          title: FittedBox(
              fit: BoxFit.contain,
              child: Image.asset(
                'assets/aws.png',
                height: 60,
              )),
        ),
        body: const WebView(
          javascriptMode: JavascriptMode.unrestricted,
          zoomEnabled: false,
          initialUrl: 'https://awscommunity.pk/aws-community-day-lahore-2022/',
        ),
      ),
    );
  }
}
