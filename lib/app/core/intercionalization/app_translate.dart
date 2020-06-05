import 'package:flutter/cupertino.dart';
import 'package:tranlation/app/core/intercionalization/app_localizations.dart';

class AppTranslate {
  final BuildContext context;


  AppTranslate(this.context);

  String text(String key){
    return AppLocalizations.of(context).translate(key);
  }
}