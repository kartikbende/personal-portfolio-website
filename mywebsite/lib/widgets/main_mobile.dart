import 'package:flutter/material.dart';
import 'package:mywebsite/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 400.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //my img
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [
                  CustomColor.scaffoldBg.withOpacity(0.3),
                  CustomColor.scaffoldBg.withOpacity(0.3),
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/kbbgremoved.png",
              width: screenWidth,
              height: 250.0,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          // intro text
          const Text(
            "Hi,\nI'm Kartik Bende\nA Flutter/Software Developer",
            style: TextStyle(
              fontSize: 19.0,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Center(
            child: SizedBox(
              width: 190.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.yewllowPrimary),
                onPressed: () {},
                child: const Text(
                  "Get In Touch",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
