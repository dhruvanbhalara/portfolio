import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/utils/app_constants.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return const DesktopAboutMe();
        } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200) {
          return const TabletAboutMe();
        } else {
          return const MobileAboutMe();
        }
      },
    );
  }
}

class DesktopAboutMe extends StatefulWidget {
  const DesktopAboutMe({super.key});

  @override
  State<DesktopAboutMe> createState() => _DesktopAboutMeState();
}

class _DesktopAboutMeState extends State<DesktopAboutMe> {
  double width = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.7,
      width: width,
      child: stackedWidgets(height, width),
    );
  }
}

class MobileAboutMe extends StatefulWidget {
  const MobileAboutMe({super.key});

  @override
  State<MobileAboutMe> createState() => _MobileAboutMeState();
}

class _MobileAboutMeState extends State<MobileAboutMe> {
  double width = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: width,
      child: Column(
        children: [
          nameWidget(40, 15),
          const SizedBox(
            height: 40,
          ),
          // myImageWidget(height / 1.5, width / 2)
          SizedBox(
            height: 0.6 * height,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: Image.network(
                kProfileImageURL,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

class TabletAboutMe extends StatefulWidget {
  const TabletAboutMe({super.key});

  @override
  State<TabletAboutMe> createState() => _TabletAboutMeState();
}

class _TabletAboutMeState extends State<TabletAboutMe> {
  double width = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height,
      child: tabletViewWidget(width, height),
    );
  }
}

//common name and description widget
Widget nameWidget(double nameFontSize, double descFontSize) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        AppLocalization.current.kHello,
        style: TextStyle(
          fontSize: nameFontSize,
          fontWeight: FontWeight.w600,
        ),
      ),
      Text(
        AppLocalization.current.kName,
        style: TextStyle(
          fontSize: nameFontSize,
          fontWeight: FontWeight.w600,
        ),
      ),
      Text(
        AppLocalization.current.kDescription,
        style: TextStyle(
          fontSize: descFontSize,
          color: Colors.blueGrey[400],
        ),
      ),
    ],
  );
}

//image widget
Widget myImageWidget(double height, double width) {
  return SizedBox(
    height: 0.5 * height,
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Image.network(
        kProfileImageURL,
        fit: BoxFit.cover,
      ),
    ),
  );
}

//shapes for desktop view only
Widget circleShape(double width, double height, Color color) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: color.withOpacity(0.4),
      shape: BoxShape.circle,
    ),
  );
}

//all stacked widgets used for desktop view
Widget stackedWidgets(double height, double width) {
  return Stack(
    children: [
      //random circles
      Positioned(
        top: 0.2 * height,
        left: 0.065 * width,
        child: circleShape(200, 200, Colors.redAccent),
      ),

      Positioned(
        top: 0.1 * height,
        left: 0.55 * width,
        child: circleShape(60, 60, Colors.tealAccent),
      ),

      Positioned(
        top: 0.1 * height,
        left: 0.35 * width,
        child: circleShape(60, 60, Colors.cyanAccent),
      ),

      Positioned(
        top: 0.2 * height,
        left: 0.40 * width,
        child: circleShape(300, 300, Colors.yellowAccent),
      ),

      Positioned(
        top: 0.50 * height,
        left: 0.35 * width,
        child: circleShape(100, 100, Colors.tealAccent),
      ),

      Positioned(
        top: 0.28 * height,
        left: 0.12 * width,
        child: nameWidget(60, 20),
      ),

      //top yellow circle
      Positioned(
        top: 0.012 * height,
        right: 0.04 * width,
        child: circleShape(200, 200, Colors.yellowAccent),
      ),

      //top red circle
      Positioned(
        top: 0.07 * height,
        right: 0.065 * width,
        child: circleShape(60, 60, Colors.redAccent),
      ),

      Positioned(
        top: 0.10 * height,
        right: 0.08 * width,
        child: myImageWidget(height, width),
      ),
    ],
  );
}

//tablet view code simplification
Widget tabletViewWidget(double width, double height) {
  return Container(
    padding: EdgeInsets.only(left: 0.02 * width, right: 0.02 * width),
    height: height,
    width: width,
    child: Column(
      children: [
        nameWidget(50, 20),
        const SizedBox(
          height: 60,
        ),
        myImageWidget(height / 1, width / 2),
        const SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}
