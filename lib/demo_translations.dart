import 'package:flutter/material.dart';

class DemoLocalizations {
  DemoLocalizations(this.locale);

  final Locale locale;

  static DemoLocalizations of(BuildContext context) {
    return Localizations.of<DemoLocalizations>(context, DemoLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Home',
      'instruction': 'You have pushed the button this many times:'
    },
    'fr': {
      'title': 'Accueil',
      'instruction': 'Vous avez appuyé sur ce bouton ce nombre de fois:'
    },
  };

  String get title {
    return _localizedValues[locale.languageCode]['title'];
  }

  String get instruction {
    return _localizedValues[locale.languageCode]['instruction'];
  }
}
