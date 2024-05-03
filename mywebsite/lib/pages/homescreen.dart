import 'package:flutter/material.dart';
import 'package:mywebsite/constants/colors.dart';
import 'package:mywebsite/constants/sized.dart';
import 'package:mywebsite/widgets/drawer_mobile.dart';
import 'package:mywebsite/widgets/header-desktop.dart';
import 'package:mywebsite/widgets/header-mobile.dart';
import 'package:mywebsite/widgets/main_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer:
              constraints.maxWidth >= mindeskwidth ? null : const DrawerM(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //main
              if (constraints.maxWidth >= mindeskwidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              const Maindesktop(),
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
                color: Colors.blueGrey.shade400,
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
                color: Colors.blueGrey.shade400,
              ),
            ],
          ),
        );
      },
    );
  }
}
