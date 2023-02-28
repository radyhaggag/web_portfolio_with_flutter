import '../../core/utils/app_enums.dart';
import '../../core/utils/app_extensions.dart';

class ResponsiveSize {
  double deviceWidth;
  double? mobileSize;
  double? ipadSize;
  double? smallScreenSize;
  double? largeScreenSize;
  double? extraLargeSize;

  ResponsiveSize({
    required this.deviceWidth,
    this.mobileSize,
    this.ipadSize,
    this.smallScreenSize,
    this.largeScreenSize,
    this.extraLargeSize,
  }) {
    mobileSize = mobileSize ??
        ipadSize ??
        smallScreenSize ??
        largeScreenSize ??
        extraLargeSize;
    ipadSize = ipadSize ??
        smallScreenSize ??
        largeScreenSize ??
        extraLargeSize ??
        mobileSize;
    smallScreenSize = smallScreenSize ??
        largeScreenSize ??
        extraLargeSize ??
        ipadSize ??
        mobileSize;
    largeScreenSize = largeScreenSize ??
        extraLargeSize ??
        smallScreenSize ??
        ipadSize ??
        mobileSize;
    extraLargeSize = extraLargeSize ??
        largeScreenSize ??
        smallScreenSize ??
        ipadSize ??
        mobileSize;
  }

  double? getSize() {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return mobileSize;
    } else if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return mobileSize;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return ipadSize;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return smallScreenSize;
    } else if (deviceWidth < DeviceType.largeScreenDesktop.getMaxWidth()) {
      return largeScreenSize;
    } else {
      return extraLargeSize;
    }
  }
}
