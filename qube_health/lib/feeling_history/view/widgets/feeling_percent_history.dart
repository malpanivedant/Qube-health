import 'package:flutter/material.dart';
import 'package:qube_health/common/custom_widget/feeling_percent_widget.dart';
import 'package:qube_health/common/util/app_theme.dart';
import 'package:qube_health/common/util/consts.dart';

class FeelingPercentHistoryWidget extends StatelessWidget {
  final String? energericPercent;
  final String? sadPercent;
  final String? lovePercent;
  final String? calmPercent;
  final String? boredPercent;
  final String? happyPercent;
  final String? angryPercent;

  const FeelingPercentHistoryWidget({
    Key? key,
    this.energericPercent,
    this.sadPercent,
    this.lovePercent,
    this.calmPercent,
    this.boredPercent,
    this.happyPercent,
    this.angryPercent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(
            "Your feelings from last 30 days",
            style: AppTheme.kBody.copyWith(fontSize: 16),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FeelingPercentWidget(
                icon: kEnergetic,
                label: "Energetic",
                isfaded: !(energericPercent != null &&
                    double.tryParse(energericPercent!) != null &&
                    double.tryParse(energericPercent!)! > 0),
                percent: energericPercent,
              ),
              FeelingPercentWidget(
                icon: kSad,
                label: "Sad",
                isfaded: !(sadPercent != null &&
                    double.tryParse(sadPercent!) != null &&
                    double.tryParse(sadPercent!)! > 0),
                percent: sadPercent,
              ),
              FeelingPercentWidget(
                icon: kHappy,
                label: "Happy",
                isfaded: !(happyPercent != null &&
                    double.tryParse(happyPercent!) != null &&
                    double.tryParse(happyPercent!)! > 0),
                percent: happyPercent,
              ),
              FeelingPercentWidget(
                icon: kAngry,
                label: "Angry",
                isfaded: !(angryPercent != null &&
                    double.tryParse(angryPercent!) != null &&
                    double.tryParse(angryPercent!)! > 0),
                percent: angryPercent,
              ),
              FeelingPercentWidget(
                icon: kCalm,
                label: "Calm",
                isfaded: !(calmPercent != null &&
                    double.tryParse(calmPercent!) != null &&
                    double.tryParse(calmPercent!)! > 0),
                percent: calmPercent,
              ),
              FeelingPercentWidget(
                icon: kBored,
                label: "Bored",
                isfaded: !(boredPercent != null &&
                    double.tryParse(boredPercent!) != null &&
                    double.tryParse(boredPercent!)! > 0),
                percent: boredPercent,
              ),
              FeelingPercentWidget(
                icon: kLove,
                label: "Love",
                isfaded: !(lovePercent != null &&
                    double.tryParse(lovePercent!) != null &&
                    double.tryParse(lovePercent!)! > 0),
                percent: lovePercent,
              ),
            ],
          ),
          const SizedBox(height: 10)
        ],
      ),
    );
  }
}
