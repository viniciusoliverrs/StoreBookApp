import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../theme/AppSizes.dart';

class CategoryCarousel extends StatelessWidget {
  List<String> categories = [
    "Design",
    "Detectives",
    "Comics",
  ];
  CategoryCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.06,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Card(
              shadowColor: AppColors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 1,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    categories[index],
                    style: const TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w500,
                      fontSize: AppSizes.fontSizeMedium,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
