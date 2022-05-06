import 'package:flutter/material.dart';

import '../theme/AppColors.dart';
import '../theme/AppSizes.dart';

class SearchAppBar extends StatelessWidget with PreferredSizeWidget {
  final double height;
  final Widget child;

  const SearchAppBar({Key? key, required this.child, this.height = 90})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: preferredSize.height,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Search\nYour Book",
              style: TextStyle(
                  color: AppColors.info, fontSize: AppSizes.fontSizeMedium),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.05,
              child: const TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(13))),
                    hintText: 'Search...',
                    alignLabelWithHint: true),
              ),
            ),
            Ink(
              decoration: BoxDecoration(
                color: AppColors.lightYellow,
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_off_outlined,
                  color: AppColors.yellow,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
