import 'package:flutter/material.dart';
import 'package:library_app/theme/AppColors.dart';
import 'package:library_app/theme/AppSizes.dart';

class CategoryCard extends StatelessWidget {
  String title;
  String subtitle;
  VoidCallback onPressed;
  Color titleColor;
  Color subtitleColor;
  Color backgroundColor;
  Color iconColor;
  Color buttonBackgroundColor;
  IconData icon;

  CategoryCard({
    required this.title,
    required this.subtitle,
    required this.onPressed,
    required this.titleColor,
    required this.subtitleColor,
    required this.backgroundColor,
    required this.iconColor,
    required this.buttonBackgroundColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.44,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration:  BoxDecoration(
                color: buttonBackgroundColor,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon:  Icon(
                  icon,
                  size: AppSizes.iconSizeDefault,
                  color: iconColor,
                ),
                onPressed: () => {},
              ),
            ),
             Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: AppSizes.fontSizeDefault,
                  fontWeight: FontWeight.bold,
                  color: titleColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6),
              child: Text(
                subtitle,
                style: TextStyle(
                  fontSize: AppSizes.fontSizeDefault,
                  fontWeight: FontWeight.bold,
                  color: subtitleColor,
                ),
              ),
            ),
          ]),
    );
  }
}
