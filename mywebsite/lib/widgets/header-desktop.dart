import 'package:flutter/material.dart';
import 'package:mywebsite/constants/colors.dart';
import 'package:mywebsite/constants/nav_items.dart';
import 'package:mywebsite/widgets/sitelogo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.transparent, CustomColor.bgLight1],
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          SiteLogo(
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  navTitles[i],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: CustomColor.whitePrimary,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
