import 'package:flutter/material.dart';
import 'package:qube_health/common/util/app_theme.dart';

class FeelingPercentWidget extends StatelessWidget {
  final String? percent;
  final String icon;
  final String label;
  final bool isfaded;
  const FeelingPercentWidget({
    Key? key,
    this.percent,
    required this.icon,
    required this.label,
    required this.isfaded,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Opacity(
        opacity: isfaded ? 0.3 : 1,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 80,
                  width: 40,
                  decoration: BoxDecoration(
                    boxShadow: AppTheme().getBoxShadow(),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFF1F2F3),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      if (percent != null)
                        Text(
                          "$percent%",
                          style: AppTheme.kPercent.copyWith(
                            color: Colors.black,
                          ),
                        ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      boxShadow: AppTheme().getBoxShadow(),
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF85C454),
                    ),
                    child: Image.asset(icon),
                  ),
                )
              ],
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: AppTheme.kPercent.copyWith(fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
