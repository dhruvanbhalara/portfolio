import 'package:flutter/material.dart';
import 'package:portfolio/pages/aboutPage/aboutPage.dart';
import 'package:portfolio/pages/contactPage/contactPage.dart';
import 'package:portfolio/pages/navBar/topBar.dart';
import 'package:portfolio/pages/portfolioPage/portfolioPage.dart';
import 'package:portfolio/pages/servicePage/servicePage.dart';
import 'package:portfolio/providers/utility_provider.dart';
import 'package:provider/provider.dart';

class PortfolioApp extends StatefulWidget {
  @override
  _PortfolioAppState createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  late UtilityProvider utilityProvider;
  @override
  Widget build(BuildContext context) {
    utilityProvider = Provider.of<UtilityProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          controller: utilityProvider.getScrollController(),
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              TopNavBar(),
              AboutPage(),
              ServicesPage(),
              PortfolioPage(),
              ContactPage(),
            ],
          ),
        ),
      ),
    );
  }
}
