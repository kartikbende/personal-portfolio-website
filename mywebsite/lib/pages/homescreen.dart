import 'package:flutter/material.dart';
import 'package:mywebsite/constants/colors.dart';
import 'package:mywebsite/widgets/header-mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: Drawer(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //main
            // const HeaderDesktop(),
            HeaderMobile(
              onLogoTap: () {},
              onMenuTap: () {
                scaffoldKey.currentState?.openEndDrawer();
              },
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
