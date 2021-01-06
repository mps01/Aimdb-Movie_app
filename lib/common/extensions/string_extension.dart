import 'package:flutter/material.dart';
import 'package:movies_app/presentation/app_localizations.dart';

extension StringExtension on String {
  String intelliTrim(int titleLen) {
    return this.length > titleLen ? '${this.substring(0, 15)}...' : this;
  }

  String t(BuildContext context) {
    return AppLocalizations.of(context).translate(this);
  }
}
