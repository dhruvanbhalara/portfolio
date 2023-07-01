import 'package:url_launcher/url_launcher.dart' as launcher;

Future<void> launchUrl(String obtainedUrl) async {
  final Uri url = Uri.parse(obtainedUrl);
  if (await launcher.canLaunchUrl(url)) {
    await launcher.launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
