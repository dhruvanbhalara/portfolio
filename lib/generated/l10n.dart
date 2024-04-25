// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalization {
  AppLocalization();

  static AppLocalization? _current;

  static AppLocalization get current {
    assert(_current != null,
        'No instance of AppLocalization was loaded. Try to initialize the AppLocalization delegate before accessing AppLocalization.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalization> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalization();
      AppLocalization._current = instance;

      return instance;
    });
  }

  static AppLocalization of(BuildContext context) {
    final instance = AppLocalization.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalization present in the widget tree. Did you add AppLocalization.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalization? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  /// `Dhruvan Bhalara | Portfolio`
  String get appName {
    return Intl.message(
      'Dhruvan Bhalara | Portfolio',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get kAbout {
    return Intl.message(
      'About',
      name: 'kAbout',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get kServices {
    return Intl.message(
      'Services',
      name: 'kServices',
      desc: '',
      args: [],
    );
  }

  /// `Portfolio`
  String get kPortfolio {
    return Intl.message(
      'Portfolio',
      name: 'kPortfolio',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get kContact {
    return Intl.message(
      'Contact',
      name: 'kContact',
      desc: '',
      args: [],
    );
  }

  /// `Hello,`
  String get kHello {
    return Intl.message(
      'Hello,',
      name: 'kHello',
      desc: '',
      args: [],
    );
  }

  /// `I'm Dhruvan Bhalara`
  String get kName {
    return Intl.message(
      'I\'m Dhruvan Bhalara',
      name: 'kName',
      desc: '',
      args: [],
    );
  }

  /// `Freelance Mobile Developer & Tech Enthusiast`
  String get kDescription {
    return Intl.message(
      'Freelance Mobile Developer & Tech Enthusiast',
      name: 'kDescription',
      desc: '',
      args: [],
    );
  }

  /// `What I Do`
  String get kWhatIdo {
    return Intl.message(
      'What I Do',
      name: 'kWhatIdo',
      desc: '',
      args: [],
    );
  }

  /// `User Experience Design`
  String get kCardTitle1 {
    return Intl.message(
      'User Experience Design',
      name: 'kCardTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Mobile App Development`
  String get kCardTitle2 {
    return Intl.message(
      'Mobile App Development',
      name: 'kCardTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Front-end Development`
  String get kCardTitle3 {
    return Intl.message(
      'Front-end Development',
      name: 'kCardTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Who I Am`
  String get kWhoIam {
    return Intl.message(
      'Who I Am',
      name: 'kWhoIam',
      desc: '',
      args: [],
    );
  }

  /// `Experienced App Developer, love creating amazing Apps for Mobile && Web across different Screen Sizes, Fan of Amazing UI/UX && Open-Source Lover and Contributor`
  String get kWhoIamDetails {
    return Intl.message(
      'Experienced App Developer, love creating amazing Apps for Mobile && Web across different Screen Sizes, Fan of Amazing UI/UX && Open-Source Lover and Contributor',
      name: 'kWhoIamDetails',
      desc: '',
      args: [],
    );
  }

  /// `I love creating UI and converting them into a amazing experiences using mobile and web technologies`
  String get kCardDescription1 {
    return Intl.message(
      'I love creating UI and converting them into a amazing experiences using mobile and web technologies',
      name: 'kCardDescription1',
      desc: '',
      args: [],
    );
  }

  /// `Experienced in creating robust and user friendly Mobile Apps for both Android and iOS Platforms`
  String get kCardDescription2 {
    return Intl.message(
      'Experienced in creating robust and user friendly Mobile Apps for both Android and iOS Platforms',
      name: 'kCardDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Experienced creating Amazing, Responsive Websites across different Screen Sizes`
  String get kCardDescription3 {
    return Intl.message(
      'Experienced creating Amazing, Responsive Websites across different Screen Sizes',
      name: 'kCardDescription3',
      desc: '',
      args: [],
    );
  }

  /// `Download CV`
  String get kDownloadCV {
    return Intl.message(
      'Download CV',
      name: 'kDownloadCV',
      desc: '',
      args: [],
    );
  }

  /// `My Work`
  String get kMyWork {
    return Intl.message(
      'My Work',
      name: 'kMyWork',
      desc: '',
      args: [],
    );
  }

  /// `View All Work`
  String get kViewAllWork {
    return Intl.message(
      'View All Work',
      name: 'kViewAllWork',
      desc: '',
      args: [],
    );
  }

  /// `Have Any Project in Mind? Say Hello At`
  String get kContactCardTitle {
    return Intl.message(
      'Have Any Project in Mind? Say Hello At',
      name: 'kContactCardTitle',
      desc: '',
      args: [],
    );
  }

  /// `  D  `
  String get kIconFirstLetter {
    return Intl.message(
      '  D  ',
      name: 'kIconFirstLetter',
      desc: '',
      args: [],
    );
  }

  /// ` hruvan`
  String get kIconRemainingLetters {
    return Intl.message(
      ' hruvan',
      name: 'kIconRemainingLetters',
      desc: '',
      args: [],
    );
  }

  /// `© Dhruvan 2023. All rights reserved.`
  String get kRightsReserved {
    return Intl.message(
      '© Dhruvan 2023. All rights reserved.',
      name: 'kRightsReserved',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalization> load(Locale locale) => AppLocalization.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
