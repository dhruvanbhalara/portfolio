import 'package:flutter/material.dart';
import 'package:portfolio/pages/about_page/about_page.dart';
import 'package:portfolio/pages/contact_page/contact_page.dart';
import 'package:portfolio/pages/nav_bar/nav_bar.dart';
import 'package:portfolio/pages/portfolio_page/portfolio_page.dart';
import 'package:portfolio/pages/service_page/service_page.dart';
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
