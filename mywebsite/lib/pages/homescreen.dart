import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:mywebsite/constants/colors.dart';
import 'package:mywebsite/constants/sized.dart';
import 'package:mywebsite/constants/sns_links.dart';
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
  final scrollController = ScrollController();

  final List<GlobalKey> navbarkeys = List.generate(4, (index) => GlobalKey());
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= mindeskwidth
              ? null
              : DrawerM(
                  onNavItemClick: (int navIndex) {
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToSection(navIndex);
                  },
                ),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                //header
                SizedBox(
                  key: navbarkeys.first,
                ),
                if (constraints.maxWidth >= mindeskwidth)
                  HeaderDesktop(
                    onNavMenuTap: (int navIndex) {
                      scrollToSection(navIndex);
                    },
                  )
                else
                  HeaderMobile(
                    onLogoTap: () {
                      js.context.callMethod('open', [SnsLinks.github]);
                    },
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                // main
                if (constraints.maxWidth >= mindeskwidth)
                  const Maindesktop()
                else
                  const MainMobile(),
                const SizedBox(height: 30),
                // about me
                // const SizedBox(height: 30),
                //Skills
                Container(
                  key: navbarkeys[1],
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
                ProjectsSection(
                  key: navbarkeys[2],
                ),
                const SizedBox(height: 30),

                // CONTACT
                ContactSection(
                  key: navbarkeys[3],
                ),
                const SizedBox(height: 30),
                //FOOTER
                const Footer(),
              ],
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      // open a blog page
      js.context.callMethod('open', [SnsLinks.github]);
      return;
    }

    final key = navbarkeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
