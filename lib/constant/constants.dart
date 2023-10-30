import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

//colors
const Color kPrimaryColor = Color(0xFF202342);

const Color kSecondaryColor = Color(0xFF252a4a);
// const Color kTextBlackColor = Color(0xFF313131);
const Color kTextHintColor = Colors.grey;
const Color kTextWhiteColor = Colors.white;
// const Color kContainerColor = Color(0xFFFFDADA);
const Color kWhiteColor = Colors.white;
const Color kIconcolor = Colors.white;
const Color kothercolor = Colors.blue;

const Color kUnselectedcolor = Colors.grey;

// const Color kTextLightColor = Color(0xFFA5A5A5);
// const Color kUnselectedColor = Color.fromARGB(255, 128, 128, 128);
const Color kErrorBorderColor = Color(0xFFE74C3C);

// const lightColorScheme = ColorScheme(
//   brightness: Brightness.light,
//   primary: Color(0xFFBE0038),
//   onPrimary: Color.fromARGB(255, 255, 132, 132),
//   primaryContainer: Color.fromARGB(255, 250, 0, 0),
//   onPrimaryContainer: Color.fromARGB(255, 0, 0, 0),
//   secondary: Color.fromARGB(255, 255, 0, 0),
//   onSecondary: Color(0xFFFFFFFF),
//   secondaryContainer: Color(0xFF78FBB6),
//   onSecondaryContainer: Color(0xFF002111),
//   tertiary: Color(0xFF006874),
//   onTertiary: Color(0xFFFFFFFF),
//   tertiaryContainer: Color(0xFF97F0FF),
//   onTertiaryContainer: Color(0xFF001F24),
//   error: Color(0xFFBA1A1A),
//   errorContainer: Color(0xFFFFDAD6),
//   onError: Color(0xFFFFFFFF),
//   onErrorContainer: Color(0xFF410002),
//   background: Color(0xFFFFFBFF),
//   onBackground: Color(0xFF201A1A),
//   surface: Color(0xFFFFFBFF),
//   onSurface: Color(0xFF201A1A),
//   surfaceVariant: Color.fromARGB(255, 255, 7, 7),
//   onSurfaceVariant: Color(0xFF524343),
//   outline: Color(0xFF857373),
//   onInverseSurface: Color(0xFFFBEEED),
//   inverseSurface: Color(0xFF362F2F),
//   inversePrimary: Color.fromARGB(255, 0, 0, 0),
//   shadow: Color(0xFF000000),
//   surfaceTint: Color(0xFFBE0038),
//   outlineVariant: Color(0xFFD7C1C2),
//   scrim: Color(0xFF000000),
// );

//default value
const kWidthOfInputBoarder = 0.7;
// final kDefaultWidthPadding = 4.w;
// final kDefaultheightPadding = 1.h;

final kHeightlargeSizedBox = SizedBox(
  height: 1.h * 2,
);

final kHeightSmallSizedBox = SizedBox(
  height: 1.h,
);
final kWidthSizedBox = SizedBox(
  width: 4.w,
);

final kHeightHalfSizedBox = SizedBox(
  height: 1.h / 2,
);

final kHalfWidthSizedBox = SizedBox(
  width: 4.w / 2,
);

final kTopBorderRadius = BorderRadius.only(
  topLeft: Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
  topRight:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
);

final kBorderRadiusAll = BorderRadius.all(
  Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
);

final kBottomBorderRadius = BorderRadius.only(
  bottomRight:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
  bottomLeft:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
);

final kInputTextStyle = GoogleFonts.poppins(
    color: kTextWhiteColor, fontSize: 11.sp, fontWeight: FontWeight.w500);

//validation for mobile
const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

//validation for email
const String emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
