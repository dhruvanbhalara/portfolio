import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/pages/portfolio_app.dart';
import 'package:portfolio/providers/utility_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(() {
    runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<UtilityProvider>(
            create: (_) => UtilityProvider(),
          ),
        ],
        child: MaterialApp(
          onGenerateTitle: (context) => AppLocalization.current.appName,
          theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(),
          ),
          localizationsDelegates: const [
            AppLocalization.delegate,
          ],
          supportedLocales: AppLocalization.delegate.supportedLocales,
          home: const PortfolioApp(),
        ),
      ),
    );
  }, (error, st) {
    debugPrint(error.toString());
    debugPrintStack(stackTrace: st);
  });
}
