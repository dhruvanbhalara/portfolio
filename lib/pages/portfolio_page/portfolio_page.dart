import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopPortfolioPage();
        } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200) {
          return TabletPortfolioPage();
        } else {
          return MobilePortfolioPage();
        }
      },
    );
  }
}

class DesktopPortfolioPage extends StatefulWidget {
  @override
  _DesktopPortfolioPageState createState() => _DesktopPortfolioPageState();
}

class _DesktopPortfolioPageState extends State<DesktopPortfolioPage> {
  var width;
  var height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.08 * width),
      child: Column(
        children: [
          mySelectedWorkWidget(40),
          SizedBox(
            height: 60,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                workShowCaseImages(0.6 * height, 0.4 * width, kWorkImageUrl),
                workShowCaseImages(0.6 * height, 0.4 * width, kWorkImageUrl),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          viewAllWorkButtonWidget()
        ],
      ),
    );
  }
}

class TabletPortfolioPage extends StatefulWidget {
  @override
  _TabletPorfolioPageState createState() => _TabletPorfolioPageState();
}

class _TabletPorfolioPageState extends State<TabletPortfolioPage> {
  var width;
  var height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.08 * width),
      child: Column(
        children: [
          mySelectedWorkWidget(40),
          SizedBox(
            height: 60,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                workShowCaseImages(0.6 * height, 0.4 * width, kWorkImageUrl),
                workShowCaseImages(0.6 * height, 0.4 * width, kWorkImageUrl),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          viewAllWorkButtonWidget()
        ],
      ),
    );
  }
}

class MobilePortfolioPage extends StatefulWidget {
  @override
  _MobilePortfolioPageState createState() => _MobilePortfolioPageState();
}

class _MobilePortfolioPageState extends State<MobilePortfolioPage> {
  var width;
  var height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          mySelectedWorkWidget(30),
          SizedBox(
            height: 20,
          ),
          workShowCaseImages(
              0.3 * height, (1 * width).toDouble(), kWorkImageUrl),
          SizedBox(
            height: 20,
          ),
          viewAllWorkButtonWidget()
        ],
      ),
    );
  }
}

Widget mySelectedWorkWidget(double fontSize) {
  return Text(
    AppLocalization.current.kMyWork,
    style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
  );
}

Widget workShowCaseImages(
    double imageHeight, double imageWidth, String imageUrl) {
  return Material(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    elevation: 20,
    child: Container(
      width: imageWidth,
      height: imageHeight,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Image(
        image: AssetImage(imageUrl),
        fit: BoxFit.fill,
      ),
    ),
  );
}

Widget viewAllWorkButtonWidget() {
  return MaterialButton(
      hoverElevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      color: Colors.red[400],
      child: Text(
        AppLocalization.current.kViewAllWork,
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () async {
        final url = Uri.parse(kViewAllWorkLink);
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw 'Could not launch $url';
        }
      });
}
