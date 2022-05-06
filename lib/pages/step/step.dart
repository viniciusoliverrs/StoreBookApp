import 'package:flutter/material.dart';
import 'package:library_app/theme/AppColors.dart';
import 'package:library_app/theme/AppSizes.dart';
import 'package:library_app/widgets/custom_card_info.dart';

class Step1 extends StatelessWidget {
  const Step1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Image.asset(
                "assets/images/splashscreen.png",
                height: size.height * 0.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                children: [
                  CustomCardInfo(
                    title: "500k +",
                    subtitle: "Books",
                    width: size.width * 0.20,
                    height: size.width * 0.20,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: CustomCardInfo(
                        title: "500k +",
                        subtitle: "Reviews",
                        width: size.width * 0.20,
                        height: size.width * 0.20,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Have you found \nyour book yet?",
                    style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: AppSizes.fontSizeLarge,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
