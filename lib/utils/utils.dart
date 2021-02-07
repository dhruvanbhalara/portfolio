import 'package:url_launcher/url_launcher.dart';

launchUrl(String obtainedUrl) async {
  final String url = obtainedUrl;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
