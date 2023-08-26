import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/providers/utility_provider.dart';
import 'package:portfolio/res.dart';
import 'package:portfolio/utils/app_constants.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widget/social_media_info_widget.dart';
import 'package:provider/provider.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return const DesktopServicesPage();
        } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200) {
          return const TabletServicesPage();
        } else {
          return const MobileServicesPage();
        }
      },
    );
  }
}

class DesktopServicesPage extends StatefulWidget {
  const DesktopServicesPage({super.key});

  @override
  State<DesktopServicesPage> createState() => _DesktopServicesPageState();
}

class _DesktopServicesPageState extends State<DesktopServicesPage> {
  double width = 0;
  double height = 0;
  late UtilityProvider utilityProvider;

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
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              whatIDoCard(
                Colors.yellowAccent.withOpacity(0.4),
                Res.pen,
                AppLocalization.current.kCardTitle1,
                AppLocalization.current.kCardDescription1,
                width,
                height,
                0.22 * width,
                400,
                18,
                14,
              ),
              whatIDoCard(
                Colors.tealAccent.withOpacity(0.4),
                Res.mob_dev,
                AppLocalization.current.kCardTitle2,
                AppLocalization.current.kCardDescription2,
                width,
                height,
                0.22 * width,
                400,
                18,
                14,
              ),
              whatIDoCard(
                Colors.redAccent.withOpacity(0.4),
                Res.web,
                AppLocalization.current.kCardTitle3,
                AppLocalization.current.kCardDescription3,
                width,
                height,
                0.22 * width,
                400,
                18,
                14,
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              whoIAmWidget(45),
              const SizedBox(
                height: 30,
              ),
              whoIamDetailsWidget(80),
            ],
          ),
        ],
      ),
    );
  }
}

class TabletServicesPage extends StatefulWidget {
  const TabletServicesPage({super.key});

  @override
  State<TabletServicesPage> createState() => _TabletServicesPageState();
}

class _TabletServicesPageState extends State<TabletServicesPage> {
  double width = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: whatIDoWidget(30),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              whatIDoCard(
                Colors.yellowAccent.withOpacity(0.4),
                Res.pen,
                AppLocalization.current.kCardTitle1,
                AppLocalization.current.kCardDescription1,
                width,
                height,
                0.3 * width,
                400,
                14,
                12,
              ),
              whatIDoCard(
                Colors.tealAccent.withOpacity(0.4),
                Res.mob_dev,
                AppLocalization.current.kCardTitle2,
                AppLocalization.current.kCardDescription2,
                width,
                height,
                0.3 * width,
                400,
                14,
                12,
              ),
              whatIDoCard(
                Colors.redAccent.withOpacity(0.4),
                Res.web,
                AppLocalization.current.kCardTitle3,
                AppLocalization.current.kCardDescription3,
                width,
                height,
                0.3 * width,
                400,
                14,
                12,
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Column(
            children: [
              whoIAmWidget(30),
              const SizedBox(
                height: 30,
              ),
              whoIamDetailsWidget(40),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class MobileServicesPage extends StatefulWidget {
  const MobileServicesPage({super.key});

  @override
  State<MobileServicesPage> createState() => _MobileServicesPageState();
}

class _MobileServicesPageState extends State<MobileServicesPage> {
  double width = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      //color: Colors.red,
      padding: const EdgeInsets.only(left: 20, right: 20),
      width: width,

      child: Column(
        children: [
          whatIDoWidget(30),
          const SizedBox(
            height: 30,
          ),
          whatIdoCardMobile(
            height,
            width,
            Colors.yellowAccent.withOpacity(0.4),
            Res.pen,
            AppLocalization.current.kCardTitle1,
            AppLocalization.current.kCardDescription1,
          ),
          whatIdoCardMobile(
            height,
            width,
            Colors.tealAccent.withOpacity(0.4),
            Res.mob_dev,
            AppLocalization.current.kCardTitle2,
            AppLocalization.current.kCardDescription2,
          ),
          whatIdoCardMobile(
            height,
            width,
            Colors.redAccent.withOpacity(0.4),
            Res.web,
            AppLocalization.current.kCardTitle3,
            AppLocalization.current.kCardDescription3,
          ),
          const SizedBox(
            height: 30,
          ),
          whoIAmWidget(30),
          const SizedBox(
            height: 30,
          ),
          whoIamDetailsWidget(30),
        ],
      ),
    );
  }
}

Widget whatIDoWidget(double fontSize) {
  return Text(
    AppLocalization.current.kWhatIdo,
    style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600),
  );
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
  double cardDescriptionTextSize,
) {
  return Material(
    //color: Colors.white54,
    //shadowColor: Colors.tealAccent,
    borderRadius: const BorderRadius.all(Radius.circular(8)),
    elevation: 20,
    child: Container(
      width: cardWidth,
      height: cardHeight,
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.2,
          color: Colors.white12,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: cardTitleTextSize,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
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
    AppLocalization.current.kWhoIam,
    style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600),
  );
}

Widget whoIamDetailsWidget(double spaceAfterCards) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        AppLocalization.current.kWhoIamDetails,
        textAlign: TextAlign.center,
        style: const TextStyle(
          letterSpacing: 0.5,
          fontSize: 14,
          color: Colors.blueGrey,
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Center(
        child: MaterialButton(
          hoverElevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          color: Colors.red[400],
          child: Text(
            AppLocalization.current.kDownloadCV,
            style: const TextStyle(color: Colors.white),
          ),
          onPressed: () => launchUrl(kCvUrl),
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
      const SizedBox(
        height: 30,
      ),
    ],
  );
}

Widget whatIdoCardMobile(
  double height,
  double width,
  Color color,
  String imagePath,
  String title,
  String description,
) {
  return Column(
    children: [
      SizedBox(
        height: height / 6,
        width: width,
        child: Material(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          elevation: 20,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
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
                      padding: const EdgeInsets.only(left: 16, top: 16),
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 16, right: 16),
                      child: Text(
                        description,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
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
      const SizedBox(
        height: 20,
      ),
    ],
  );
}
