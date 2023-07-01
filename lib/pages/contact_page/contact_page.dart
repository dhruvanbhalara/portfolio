import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/providers/utility_provider.dart';
import 'package:portfolio/res.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:portfolio/widget/social_media_info_widget.dart';
import 'package:provider/provider.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopContactPage();
      } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200) {
        return TabletContactPage();
      } else {
        return MobileContactPage();
      }
    });
  }
}

class DesktopContactPage extends StatefulWidget {
  @override
  _DesktopContactPageState createState() => _DesktopContactPageState();
}

class _DesktopContactPageState extends State<DesktopContactPage> {
  var width;
  var height;
  var utilityProvider;
  late ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    utilityProvider = Provider.of<UtilityProvider>(context);
    scrollController = utilityProvider.getScrollController();
    return Container(
      width: width,
      //height: height,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 60,
          ),
          emailContactWidget(200, 0.6 * width, 18, 35),
          SizedBox(
            height: 60,
          ),
          websiteIcon(),
          SizedBox(
            height: 60,
          ),
          navBarItems(scrollController),
          SizedBox(
            height: 60,
          ),
          iconBarWidget(),
          SizedBox(
            height: 60,
          ),
          footerWidget()
        ],
      ),
    );
  }
}

class TabletContactPage extends StatefulWidget {
  @override
  _TabletContactPageState createState() => _TabletContactPageState();
}

class _TabletContactPageState extends State<TabletContactPage> {
  var width;
  var height;
  var utilityProvider;
  late ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    utilityProvider = Provider.of<UtilityProvider>(context);
    scrollController = utilityProvider.getScrollController();
    return Container(
      width: width,
      //height: height,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 60,
          ),
          emailContactWidget(200, 0.8 * width, 18, 28),
          SizedBox(
            height: 60,
          ),
          websiteIcon(),
          SizedBox(
            height: 60,
          ),
          navBarItems(scrollController),
          SizedBox(
            height: 60,
          ),
          iconBarWidget(),
          SizedBox(
            height: 60,
          ),
          footerWidget()
        ],
      ),
    );
  }
}

class MobileContactPage extends StatefulWidget {
  @override
  _MobileContactPageState createState() => _MobileContactPageState();
}

class _MobileContactPageState extends State<MobileContactPage> {
  var width;
  var height;
  var utilityProvider;
  late ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    utilityProvider = Provider.of<UtilityProvider>(context);
    scrollController = utilityProvider.getScrollController();
    return Container(
      width: width,
      //height: height,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 60,
          ),
          emailContactWidget(200, 0.8 * width, 16, 20),
          SizedBox(
            height: 60,
          ),
          websiteIcon(),
          SizedBox(
            height: 60,
          ),
          navBarItems(scrollController),
          SizedBox(
            height: 60,
          ),
          iconBarWidget(),
          SizedBox(
            height: 60,
          ),
          footerWidget()
        ],
      ),
    );
  }
}

Widget emailContactWidget(double height, double width, double sayHelloFontSize,
    double emailIDFontSize) {
  return Material(
    elevation: 15,
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    child: Container(
      height: height,
      padding: EdgeInsets.symmetric(vertical: height * 0.2, horizontal: 46),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppLocalization.current.kContactCardTitle,
            style: TextStyle(
              fontSize: sayHelloFontSize,
              color: Colors.grey,
            ),
          ),
          Text(
            kEmail,
            style: TextStyle(
              fontSize: emailIDFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget footerWidget() {
  return Container(
    height: 100,
    color: Colors.grey.withOpacity(0.1),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppLocalization.current.kRightsReserved,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
        )
      ],
    ),
  );
}

Widget iconBarWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    children: [
      SocialMediaInfoWidget(
        iconPath: Res.github,
        url: kGithubURL,
      ),
      SizedBox(
        width: 20,
      ),
      SocialMediaInfoWidget(
        iconPath: Res.linkedin,
        url: kLinkedInURL,
      ),
      SizedBox(
        width: 20,
      ),
      SocialMediaInfoWidget(
        iconPath: Res.twitter,
        url: kTwitterURL,
      ),
      SizedBox(
        width: 20,
      ),
      SocialMediaInfoWidget(
        iconPath: Res.instagram,
        url: kInstagramURL,
      ),
      SizedBox(
        width: 20,
      ),
      SocialMediaInfoWidget(
        iconPath: Res.facebook,
        url: kFacebookURL,
      ),
    ],
  );
}

Widget websiteIcon() {
  return GestureDetector(
    onTap: () {},
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            border: Border(
              left: BorderSide(width: 2),
              right: BorderSide(width: 2),
              bottom: BorderSide(width: 2),
              top: BorderSide(width: 2),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              AppLocalization.current.kIconFirstLetter,
              style: GoogleFonts.poppins(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Text(
          AppLocalization.current.kIconRemainingLetters,
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}

Widget navBarItems(ScrollController scrollController) {
  return Row(
    // mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      navBarOptions(AppLocalization.current.kAbout, 1, () {
        scrollController.animateTo(
          scrollController.position.minScrollExtent + 120,
          duration: Duration(seconds: 1),
          curve: Curves.ease,
        );
      }),
      SizedBox(
        width: 40,
      ),
      navBarOptions(AppLocalization.current.kServices, 2, () {
        scrollController.animateTo(
          0.30 * scrollController.position.maxScrollExtent,
          duration: Duration(seconds: 2),
          curve: Curves.ease,
        );
      }),
      SizedBox(
        width: 40,
      ),
      navBarOptions(AppLocalization.current.kPortfolio, 3, () {
        scrollController.animateTo(
          0.60 * scrollController.position.maxScrollExtent,
          duration: Duration(seconds: 2),
          curve: Curves.ease,
        );
      }),
      SizedBox(
        width: 40,
      ),
      navBarOptions(AppLocalization.current.kContact, 4, () {
        scrollController.animateTo(
          1 * scrollController.position.maxScrollExtent,
          duration: Duration(seconds: 2),
          curve: Curves.ease,
        );
      }),
    ],
  );
}

Widget navBarOptions(String title, int position, Function() function) {
  return InkWell(
    onTap: function,
    hoverColor: Colors.grey[200],
    borderRadius: BorderRadius.circular(16),
    child: Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Text(
        title,
        style: GoogleFonts.poppins(
            color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
      ),
    ),
  );
}
