import 'package:flutter/material.dart';
import 'package:qube_health/common/custom_widget/calender_date.dart';
import 'package:qube_health/common/util/app_theme.dart';
import 'package:qube_health/feeling_history/models/feeling_view_model.dart';

class CalenderWeekWidget extends StatelessWidget {
  final String date;
  const CalenderWeekWidget({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFC6E5F7),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(5),
            child: Text(
              date,
              style: AppTheme.kPercent.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CalenderDate(
                  dayLabel: getWeekList[0].label,
                  date: getWeekList[0].date,
                  isSelected: getWeekList[0].isSelected),
              CalenderDate(
                  dayLabel: getWeekList[1].label,
                  date: getWeekList[1].date,
                  isSelected: getWeekList[1].isSelected),
              CalenderDate(
                  dayLabel: getWeekList[2].label,
                  date: getWeekList[2].date,
                  isSelected: getWeekList[2].isSelected),
              CalenderDate(
                  dayLabel: getWeekList[3].label,
                  date: getWeekList[3].date,
                  isSelected: getWeekList[3].isSelected),
              CalenderDate(
                  dayLabel: getWeekList[4].label,
                  date: getWeekList[4].date,
                  isSelected: getWeekList[4].isSelected),
              CalenderDate(
                  dayLabel: getWeekList[5].label,
                  date: getWeekList[5].date,
                  isSelected: getWeekList[5].isSelected),
              CalenderDate(
                  dayLabel: getWeekList[6].label,
                  date: getWeekList[6].date,
                  isSelected: getWeekList[6].isSelected),
            ],
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
