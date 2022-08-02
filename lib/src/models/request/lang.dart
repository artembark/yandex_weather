part of 'request.dart';

/// {@template lang}
/// Сочетания языка и страны, для которых будут возвращены данные погодных формулировок.
/// {@endtemplate}
enum Lang {
  /// ru_RU — русский язык для домена России
  ru,

  /// uk_UA — украинский язык для домена Украины
  uk,

  /// be_BY — белорусский язык для домена Беларуси
  be,

  /// kk_KZ - казахский язык для домена Казахстана
  kz,

  /// международный английский
  enEn,

  /// турецкий язык для домена Турции
  tr,
}

extension _LangX on Lang {
  String _toLang() {
    switch (this) {
      case Lang.uk:
        return 'uk_UA';
      case Lang.be:
        return 'be_BY';
      case Lang.kz:
        return 'kk_KZ';
      case Lang.enEn:
        return 'en_US';
      case Lang.tr:
        return 'tr_TR';
      case Lang.ru:
      default:
        return 'ru_RU';
    }
  }
}
