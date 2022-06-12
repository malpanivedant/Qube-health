import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qube_health/assessment_page/view/assessment_page.dart';

const String _splashScreenAsset = "assets/images/qube-logo2.png";

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({Key? key}) : super(key: key);

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () async {
      await Get.off(() => const AssessmentPage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset(
        _splashScreenAsset,
        fit: BoxFit.fitWidth,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
