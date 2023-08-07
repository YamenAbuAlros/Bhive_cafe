

import 'package:get/get.dart';

import 'languages/ar_language.dart';
import 'languages/en_language.dart';
import 'languages/tr_language.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": EnLanguage.map,
        "ar_SA": ArLanguage.map,
        "tr_TR": TRLanguage.map
      };
}

tr(String key) => key.tr;
