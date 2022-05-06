import 'package:flutter/material.dart';
import 'package:library_app/theme/AppColors.dart';
import 'package:library_app/theme/AppSizes.dart';

class CustomCardInfo extends StatelessWidget {
  final String title;
  final String subtitle;
  final double width;
  final double height;
  const CustomCardInfo(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.secondary),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              title,
              style: const TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
                fontSize: AppSizes.fontSizeDefault,
              ),
            ),
          ),
          Text(
            subtitle,
            style: const TextStyle(
              color: AppColors.info,
              fontWeight: FontWeight.w500,
              fontSize: AppSizes.fontSizeSmall,
            ),
          ),
        ],
      ),
    );
  }
}
