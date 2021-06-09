import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intranet_americagit/pages/login/loginscrenn.dart';
import 'package:intranet_americagit/pages/principal/principal_page.dart';

class SplashAmerica extends StatefulWidget {
  const SplashAmerica({Key? key}) : super(key: key);

  @override
  _SplashAmericaState createState() => _SplashAmericaState();
}

class _SplashAmericaState extends State<SplashAmerica> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return Login();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final color = Color(0xff022d4f);
    return Container(
      decoration: BoxDecoration(color: color),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('assets/image/Logo.JPG'),
      ),
    );
  }
}
