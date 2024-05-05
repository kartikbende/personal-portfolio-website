import 'package:flutter/material.dart';
import 'package:mywebsite/constants/colors.dart';
import 'package:mywebsite/constants/sized.dart';
import 'package:mywebsite/widgets/contact_section.dart';
import 'package:mywebsite/widgets/drawer_mobile.dart';
import 'package:mywebsite/widgets/footer.dart';
import 'package:mywebsite/widgets/header-desktop.dart';
import 'package:mywebsite/widgets/header-mobile.dart';
import 'package:mywebsite/widgets/main_desktop.dart';
import 'package:mywebsite/widgets/main_mobile.dart';
import 'package:mywebsite/widgets/project_section.dart';
import 'package:mywebsite/widgets/skills_desktop.dart';
import 'package:mywebsite/widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

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

              if (constraints.maxWidth >= mindeskwidth)
                const Maindesktop()
              else
                const MainMobile(),
              //Skills
              Container(
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // title
                    const Text(
                      "What i can do",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    // platforms and skills
                    if (constraints.maxWidth >= meddesktopwidth)
                      const SkillsDesktop()
                    else
                      const SkillsMobile(),
                  ],
                ),
              ),
              //PROJECTS
              const ProjectsSection(),
              const SizedBox(height: 30),

              // CONTACT
              const ContactSection(
                  // key: navbarKeys[3],
                  ),
              const SizedBox(height: 30),
              //FOOTER
              const Footer(),
            ],
          ),
        );
      },
    );
  }
}
