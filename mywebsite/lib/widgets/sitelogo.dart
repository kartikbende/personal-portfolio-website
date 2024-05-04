import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Image.asset(
          "assets/Kbbogo.png",
          height: 30,
          width: 30,
        )
        //const Text(
        //   "KB",
        //   style: TextStyle(
        //       fontSize: 22,
        //       fontWeight: FontWeight.bold,
        //       decoration: TextDecoration.underline,
        //       color: CustomColor.yellowSecondary),
        // ),
        );
  }
}
