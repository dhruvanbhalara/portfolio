import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class SocialMediaInfoWidget extends StatelessWidget {
  const SocialMediaInfoWidget({
    required this.url,
    required this.iconPath,
    super.key,
  });

  final String url;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(40)),
      hoverColor: Colors.black.withOpacity(0.3),
      onTap: () => launchUrl(url),
      child: Image(
        image: AssetImage(iconPath),
      ),
    );
  }
}
