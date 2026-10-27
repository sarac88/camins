import 'package:camins/styles/app_styles.dart';
import 'package:flutter/material.dart';

class StatItem extends StatelessWidget {
  	const StatItem({
		super.key, 
		required this.icon, 
		required this.text, 
		required this.info, 
		this.iconColor
	});

  	final IconData icon;
	final String text;
	final String info;
	final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
	  mainAxisAlignment: MainAxisAlignment.center,
	  children: [
		Icon(icon, size: 20, color: iconColor ?? AppStyles.green), 
		Text(text, style: TextStyle(
			color: AppStyles.darkText,
			fontWeight: .bold,
			fontSize: 14
		)), 
		Text(info, style: TextStyle(
			color: AppStyles.greyText,
			fontSize: 10
		))],
	);
  }
}