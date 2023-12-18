import 'package:flutter/cupertino.dart';

class AppSize {
  double? height;
  double? width;

  AppSize({required double this.height, required double this.width});

  factory AppSize.fromContext(BuildContext context) {
    return AppSize(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
    );
  }
}
