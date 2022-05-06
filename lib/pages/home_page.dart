import 'package:flutter/material.dart';
import 'package:library_app/theme/AppColors.dart';
import 'package:library_app/theme/AppSizes.dart';
import 'package:library_app/widgets/category_card.dart';
import 'package:library_app/widgets/category_carousel.dart';

import '../widgets/custom_banner_info.dart';
import '../widgets/search_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Eyes',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: const SearchAppBar(child: Text("Search Your Book")),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Column(
              children: [
                CategoryCarousel(),
                Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Popular category",
                        style: TextStyle(
                          fontSize: AppSizes.fontSizeMedium,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryCard(
                      title: "Photo",
                      subtitle: "12 books",
                      backgroundColor: AppColors.primary,
                      titleColor: AppColors.background,
                      subtitleColor: AppColors.background,
                      iconColor: AppColors.background,
                      buttonBackgroundColor: AppColors.blue,
                      onPressed: () => {},
                      icon: Icons.camera_alt_outlined,
                    ),
                    CategoryCard(
                      title: "Story",
                      subtitle: "113 books",
                      backgroundColor: AppColors.background,
                      titleColor: AppColors.primary,
                      subtitleColor: AppColors.info,
                      iconColor: AppColors.pink,
                      buttonBackgroundColor: AppColors.lightPink,
                      onPressed: () => {
                      },
                      icon: Icons.auto_stories,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Last Read",
                        style: TextStyle(
                          fontSize: AppSizes.fontSizeMedium,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const CustomBannerInfo(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
            ),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.grid_view),
                label: 'Home',
                backgroundColor: AppColors.primary,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.visibility),
                label: 'Review',
                backgroundColor: AppColors.pink,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.purple,
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: AppColors.background,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
