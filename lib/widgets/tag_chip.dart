import 'package:camins/styles/app_styles.dart';
import 'package:flutter/material.dart';

class TagChip extends StatelessWidget {
  const TagChip({super.key, required this.label, required this.icon });

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
		padding: .symmetric(horizontal: 12, vertical: 8),
		decoration: BoxDecoration(
			color: AppStyles.lightGreen,
			borderRadius: .circular(20),
		),
		child: Row(
			mainAxisSize: MainAxisSize.min,
			children: [
			Icon(icon, size: 16.0, color: AppStyles.green),
			SizedBox(width: 4.0),
			Text(label, style: TextStyle(color: AppStyles.green, fontWeight: .bold)),
			],
		),
	);
  }
}