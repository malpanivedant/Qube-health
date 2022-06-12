import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qube_health/common/util/app_theme.dart';
import 'package:qube_health/feeling_history/api_call/feeling_history_api_call.dart';
import 'package:qube_health/feeling_history/view/feeling_history.dart';

class AssessmentPage extends StatefulWidget {
  const AssessmentPage({Key? key}) : super(key: key);

  @override
  State<AssessmentPage> createState() => _AssessmentPageState();
}

class _AssessmentPageState extends State<AssessmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vedant Malpani Assesment"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome To my Assessment for Qube Health",
              style: AppTheme.kHeading,
            ),
            const SizedBox(height: 20),
            InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(24)),
              onTap: () async {
                // await FeelingHistoryHttpServiceApi().getData();
                Get.to(() => const FeelingHistory());
              },
              child: Ink(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(24))),
                child: Text(
                  "Check your Feeling History",
                  style: AppTheme.kBody.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
