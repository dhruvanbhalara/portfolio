import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class SocialMediaInfoWidget extends StatelessWidget {
  final String url, iconPath;

  const SocialMediaInfoWidget({
    Key? key,
    required this.url,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      hoverColor: Colors.black.withOpacity(0.3),
      onTap: () => launchUrl(url),
      child: Image(
        image: AssetImage(iconPath),
      ),
    );
  }
}
