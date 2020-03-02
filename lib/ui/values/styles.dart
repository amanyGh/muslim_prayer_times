import 'package:flutter/services.dart';
import 'package:muslim_prayer_times/UI/Values/colors.dart';

class Styles {
  static SystemUiOverlayStyle systemUIOverlayStyle = SystemUiOverlayStyle(
    statusBarColor: AppColors.primaryColorDark,
    systemNavigationBarColor: AppColors.primaryColorDark
  );

  static SystemUiOverlayStyle systemUIOverlayStyleLight = SystemUiOverlayStyle(
    statusBarColor: AppColors.primaryColorLight,
    systemNavigationBarColor: AppColors.primaryColorLight
  );
}