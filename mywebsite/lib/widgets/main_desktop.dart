import 'package:flutter/material.dart';
import 'package:mywebsite/constants/colors.dart';

class Maindesktop extends StatelessWidget {
  const Maindesktop({super.key, this.onLogoTap});
  final VoidCallback? onLogoTap;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: screenHeight / 1.1,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi,\nI'm Kartik Bende\nA Flutter/Software Developer",
                style: TextStyle(
                  fontSize: 25.0,
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
                  width: 250.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColor.yewllowPrimary),
                    onPressed: onLogoTap,
                    child: const Text(
                      "Get In Touch",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Image.asset(
            "assets/kbbgremoved.png",
            width: screenWidth / 2.7,
          ),
        ],
      ),
    );
  }
}
