import 'package:flutter/material.dart';

extension ResponsiveSpaceExtension on BuildContext {
  bool get isTablet => MediaQuery.sizeOf(this).width >= 600;

  bool get isMobile => MediaQuery.sizeOf(this).width < 600;

  SizedBox responsiveHeight(double mobileRatio, {double? tabletRatio}) {
    double width = MediaQuery.sizeOf(this).width;

    if (isTablet) {
      double finalTabletRatio = tabletRatio ?? (mobileRatio * 0.5);
      return SizedBox(height: width * finalTabletRatio);
    } else {
      return SizedBox(height: width * mobileRatio);
    }
  }

  SizedBox responsiveWidth(double mobileRatio, {double? tabletRatio}) {
    double width = MediaQuery.sizeOf(this).width;

    if (isTablet) {
      double finalTabletRatio = tabletRatio ?? (mobileRatio * 0.5);
      return SizedBox(width: width * finalTabletRatio);
    } else {
      return SizedBox(width: width * mobileRatio);
    }
  }
}
