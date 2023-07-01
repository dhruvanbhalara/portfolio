import 'package:flutter/material.dart';
import 'package:portfolio/providers/utility_provider.dart';
import 'package:portfolio/res.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widget/social_media_info_widget.dart';
import 'package:provider/provider.dart';

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopServicesPage();
        } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200) {
          return TabletServicesPage();
        } else {
          return MobileServicesPage();
        }
      },
    );
  }
}

class DesktopServicesPage extends StatefulWidget {
  @override
  _DesktopServicesPageState createState() => _DesktopServicesPageState();
}

class _DesktopServicesPageState extends State<DesktopServicesPage> {
  var width;
  var height;
  var utilityProvider;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    utilityProvider = Provider.of<UtilityProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.1 * width),
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: whatIDoWidget(45)),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              whatIDoCard(
                  Colors.yellowAccent.withOpacity(0.4),
                  Res.pen,
                  kCardTitle1,
                  kCardDescription1,
                  width,
                  height,
                  0.22 * width,
                  400,
                  18,
                  14),
              whatIDoCard(
                  Colors.tealAccent.withOpacity(0.4),
                  Res.mob_dev,
                  kCardTitle2,
                  kCardDescription2,
                  width,
                  height,
                  0.22 * width,
                  400,
                  18,
                  14),
              whatIDoCard(
                  Colors.redAccent.withOpacity(0.4),
                  Res.web,
                  kCardTitle3,
                  kCardDescription3,
                  width,
                  height,
                  0.22 * width,
                  400,
                  18,
                  14),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: whoIAmWidget(45),
              ),
              SizedBox(
                width: 0.20 * width,
              ),
              whoIamDetailsWidget(80)
            ],
          )
        ],
      ),
    );
  }
}

class TabletServicesPage extends StatefulWidget {
  @override
  _TabletServicesPageState createState() => _TabletServicesPageState();
}

class _TabletServicesPageState extends State<TabletServicesPage> {
  var width;
  var height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: whatIDoWidget(30),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              whatIDoCard(
                  Colors.yellowAccent.withOpacity(0.4),
                  Res.pen,
                  kCardTitle1,
                  kCardDescription1,
                  width,
                  height,
                  0.3 * width,
                  400,
                  14,
                  12),
              whatIDoCard(
                  Colors.tealAccent.withOpacity(0.4),
                  Res.mob_dev,
                  kCardTitle2,
                  kCardDescription2,
                  width,
                  height,
                  0.3 * width,
                  400,
                  14,
                  12),
              whatIDoCard(
                  Colors.redAccent.withOpacity(0.4),
                  Res.web,
                  kCardTitle3,
                  kCardDescription3,
                  width,
                  height,
                  0.3 * width,
                  400,
                  14,
                  12),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              whoIAmWidget(30),
              whoIamDetailsWidget(40),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class MobileServicesPage extends StatefulWidget {
  @override
  _MobileServicesPageState createState() => _MobileServicesPageState();
}

class _MobileServicesPageState extends State<MobileServicesPage> {
  var width;
  var height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      //color: Colors.red,
      padding: EdgeInsets.only(left: 20, right: 20),
      width: width,

      child: Column(
        children: [
          whatIDoWidget(30),
          SizedBox(
            height: 30,
          ),
          whatIdoCardMobile(
            height,
            width,
            Colors.yellowAccent.withOpacity(0.4),
            Res.pen,
            kCardTitle1,
            kCardDescription1,
          ),
          whatIdoCardMobile(
            height,
            width,
            Colors.tealAccent.withOpacity(0.4),
            Res.mob_dev,
            kCardTitle2,
            kCardDescription2,
          ),
          whatIdoCardMobile(
            height,
            width,
            Colors.redAccent.withOpacity(0.4),
            Res.web,
            kCardTitle3,
            kCardDescription3,
          ),
          SizedBox(
            height: 30,
          ),
          whoIAmWidget(30),
          whoIamDetailsWidget(30)
        ],
      ),
    );
  }
}

Widget whatIDoWidget(double fontSize) {
  return Text(kWhatIdo,
      style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600));
}

Widget whatIDoCard(
    Color color,
    String iconPath,
    String title,
    String description,
    double devWidth,
    double devHeight,
    double cardWidth,
    double cardHeight,
    double cardTitleTextSize,
    double cardDescriptionTextSize) {
  return Material(
    //color: Colors.white54,
    //shadowColor: Colors.tealAccent,
    borderRadius: BorderRadius.all(Radius.circular(8)),
    elevation: 20,
    child: Container(
      width: cardWidth,
      height: cardHeight,
      decoration: BoxDecoration(
          border: Border.all(
              width: 0.2, color: Colors.white12, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 120,
                height: 120,
                color: color,
                child: Center(
                  child: Image(
                      //fit: BoxFit.cover,
                      width: 60,
                      image: AssetImage(
                        iconPath,
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: cardTitleTextSize, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 0.5,
                fontSize: cardDescriptionTextSize,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget whoIAmWidget(double fontSize) {
  return Text(
    kWhoIam,
    style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600),
  );
}

Widget whoIamDetailsWidget(double spaceAfterCards) {
  return Container(
    margin: EdgeInsets.only(top: spaceAfterCards),
    width: 600,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          kWhoIamDetails,
          textAlign: TextAlign.left,
          style: TextStyle(
            letterSpacing: 0.5,
            fontSize: 14,
            color: Colors.blueGrey,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              hoverElevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              color: Colors.red[400],
              child: Text(
                kDownloadCV,
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => launchUrl(kCvUrl),
            ),
            SizedBox(
              width: 40,
            ),
            SocialMediaInfoWidget(
              iconPath: Res.github,
              url: kGithubURL,
            ),
            SizedBox(
              width: 10,
            ),
            SocialMediaInfoWidget(
              iconPath: Res.linkedin,
              url: kLinkedInURL,
            ),
            SizedBox(
              width: 10,
            ),
            SocialMediaInfoWidget(
              iconPath: Res.twitter,
              url: kTwitterURL,
            ),
            SizedBox(
              width: 10,
            ),
            SocialMediaInfoWidget(
              iconPath: Res.instagram,
              url: kInstagramURL,
            ),
            SizedBox(
              width: 10,
            ),
            SocialMediaInfoWidget(
              iconPath: Res.facebook,
              url: kFacebookURL,
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
      ],
    ),
  );
}

Widget whatIdoCardMobile(double height, double width, Color color,
    String imagePath, String title, String description) {
  return Column(
    children: [
      Container(
        height: height / 6,
        width: width,
        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          elevation: 20,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: color,
                ),
                width: 120,
                height: height / 6,
                child: Center(
                  child: Image(
                    width: 60,
                    image: AssetImage(
                      imagePath,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16),
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        description,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          letterSpacing: 0.5,
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
    ],
  );
}
