import 'package:flutter/material.dart';
import 'package:mywebsite/constants/colors.dart';
import 'package:mywebsite/widgets/sitelogo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.scaffoldBg,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //main
            // const HeaderDesktop(),
            Container(
              height: 50.0,
              margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
              child: Row(
                children: [
                  SiteLogo(
                    onTap: () {},
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  )
                ],
              ),
            ),
            //Skills
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey.shade200,
            ),
            //PROJECTS
            Container(
              height: 500,
              width: double.maxFinite,
            ),
            //CONTACT
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey.shade400,
            ),
            //FOOTER
            Container(
              height: 500,
              width: double.maxFinite,
            ),
          ],
        ));
  }
}
