import 'package:flutter/material.dart';
import 'package:qube_health/common/util/app_theme.dart';

class CalenderDate extends StatelessWidget {
  final String dayLabel;
  final String date;
  final bool isSelected;
  const CalenderDate({
    Key? key,
    required this.dayLabel,
    required this.date,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 40,
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF4F4F4F) : null,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const SizedBox(height: 4),
          Text(
            dayLabel,
            style: AppTheme.kDay.copyWith(color: const Color(0xFFA7A7A7)),
          ),
          const SizedBox(height: 4),
          Text(
            date,
            style: AppTheme.kDay.copyWith(
                color: isSelected
                    ? const Color(0xFFF1F2F3)
                    : const Color(0xFF121212)),
          ),
        ],
      ),
    );
  }
}
