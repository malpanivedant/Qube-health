import 'package:flutter/material.dart';
import 'package:qube_health/common/util/app_theme.dart';
import 'package:qube_health/feeling_history/models/feeling_view_model.dart';

class FeelingTimeWidget extends StatelessWidget {
  final List<FeelingTimeViewModel> feelingTimeList;
  const FeelingTimeWidget({
    Key? key,
    required this.feelingTimeList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: feelingTimeList.length,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
          child: Row(
            children: [
              Text(
                feelingTimeList[index].time,
                style: AppTheme.kPercent.copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(width: 25),
              Image.asset(
                feelingTimeList[index].iconUrl,
                height: 15,
                width: 15,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 4),
              Text(
                feelingTimeList[index].label,
                style: AppTheme.kPercent.copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        );
      },
    );
  }
}
