import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'rq0alycg': {
      'es': 'Carousel de Imagenes',
      'en': 'Carousel of Images',
    },
    'fmw3jzqz': {
      'es': 'Siguiente Página ->',
      'en': 'Next Page ->',
    },
    'u1l0nyhf': {
      'es': 'Semana 3 ',
      'en': 'Week 3',
    },
    'dw3ykyoy': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // SegundaPagina
  {
    'eiduw2s9': {
      'es': 'Tercera Semana ',
      'en': 'Third week',
    },
    '9mpbex9l': {
      'es': '6:00pm',
      'en': '6:00pm',
    },
    'hdqxqrko': {
      'es': 'Clase: ',
      'en': 'Class:',
    },
    'wy4d7ylr': {
      'es': 'Programacion para Dispositivos Moviles ',
      'en': 'Programming for Mobile Devices',
    },
    'nvsuwt9s': {
      'es':
          'By protecting and preserving our oceans, we can effectively reduce global warming as healthy oceans absorb a significant amount of atmospheric carbon dioxide. Implementing measures to prevent overfishing, reducing plastic pollution, and conserving marine habitats will contribute to a balanced ocean ecosystem, ultimately mitigating global warming.',
      'en':
          'By protecting and preserving our oceans, we can effectively reduce global warming as healthy oceans absorb a significant amount of atmospheric carbon dioxide. Implementing measures to prevent overfishing, reducing plastic pollution, and conserving marine habitats will contribute to a balanced ocean ecosystem, ultimately mitigating global warming.',
    },
    'u4vxy2eo': {
      'es': 'Devolverse ',
      'en': 'Return',
    },
    '0tt942uy': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // Miscellaneous
  {
    '1p8xa4ix': {
      'es':
          'La aplicacion debe ingresar al calendario para agendar las futuras clases ',
      'en':
          'The application must enter the calendar to schedule future classes',
    },
    'a9c163em': {
      'es':
          'La aplicacion debe tener acceso a notificaciones para que no se pierda ninguna clase ',
      'en':
          'The app must have access to notifications so that you don\'t miss any class.',
    },
    'qjtcndfh': {
      'es': '',
      'en': '',
    },
    'kypqr9gn': {
      'es': '',
      'en': '',
    },
    'o4ngjcrt': {
      'es': '',
      'en': '',
    },
    'iiqhieuc': {
      'es': '',
      'en': '',
    },
    'z1x3bpw7': {
      'es': '',
      'en': '',
    },
    '1l74d4tc': {
      'es': '',
      'en': '',
    },
    'y1xphlgb': {
      'es': '',
      'en': '',
    },
    'psy4k94y': {
      'es': '',
      'en': '',
    },
    'g8ga9fty': {
      'es': '',
      'en': '',
    },
    'vgszsy1j': {
      'es': '',
      'en': '',
    },
    'm6leya37': {
      'es': '',
      'en': '',
    },
    'ffmfstfp': {
      'es': '',
      'en': '',
    },
    '4381073u': {
      'es': '',
      'en': '',
    },
    'or2ium1s': {
      'es': '',
      'en': '',
    },
    'w1fpob2o': {
      'es': '',
      'en': '',
    },
    'towzn43m': {
      'es': '',
      'en': '',
    },
    'plwlln2w': {
      'es': '',
      'en': '',
    },
    'nj2x52yv': {
      'es': '',
      'en': '',
    },
    'hk3bfmut': {
      'es': '',
      'en': '',
    },
    '0a3qis3e': {
      'es': '',
      'en': '',
    },
    'uzk3lrra': {
      'es': '',
      'en': '',
    },
    'f8rhfk63': {
      'es': '',
      'en': '',
    },
    'prrtbfws': {
      'es': '',
      'en': '',
    },
    'k351diz6': {
      'es': '',
      'en': '',
    },
    '6m9rln3t': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
