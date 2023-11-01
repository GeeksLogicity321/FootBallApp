import 'package:flutter/material.dart';
import 'package:football/constant/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sizer/sizer.dart';

class CustomTheme {
  var lightTheme = ThemeData.light(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: kPrimaryColor,
    primaryColor: kPrimaryColor,
    primaryIconTheme: const IconThemeData(color: kIconcolor),

    colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor).copyWith(
      secondary: kSecondaryColor,
    ),
    tabBarTheme: const TabBarTheme(
        labelColor: kPrimaryColor,
        indicatorColor: kPrimaryColor,
        // dividerColor: ,
        unselectedLabelColor: kTextHintColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: kBorderRadiusAll),
      backgroundColor: kSecondaryColor,
      foregroundColor: kTextWhiteColor,
      elevation: 4,
    )),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: kSecondaryColor,
      contentTextStyle: TextStyle(
          color: kTextWhiteColor, fontSize: 10.sp, fontWeight: FontWeight.w700),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: false,
      titleTextStyle: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w800,
          letterSpacing: 2.0,
          color: kPrimaryColor),
      iconTheme: IconThemeData(
        color: kIconcolor,
        size: SizerUtil.deviceType == DeviceType.tablet ? 17.sp : 18.sp,
      ),
      elevation: 0,
    ),

    //input decoration theme for all our the app
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: kPrimaryColor,
      selectedItemColor: kothercolor,
      unselectedItemColor: kUnselectedcolor,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
    ),

    inputDecorationTheme: const InputDecorationTheme().copyWith(
      hintStyle: TextStyle(color: kTextHintColor, fontSize: 10.sp),
      contentPadding: EdgeInsets.symmetric(vertical: 4.w, horizontal: 1.h),
      filled: true,
      fillColor: kSecondaryColor,
      prefixIconColor: kIconcolor,
      suffixIconColor: kIconcolor,
      //label style for formField
      labelStyle: TextStyle(
          fontSize: 15.sp, color: kTextWhiteColor, fontWeight: FontWeight.w400),

      enabledBorder: OutlineInputBorder(
          borderRadius: kBorderRadiusAll,
          borderSide: const BorderSide(color: kSecondaryColor)),
      border: OutlineInputBorder(
          borderRadius: kBorderRadiusAll,
          borderSide: const BorderSide(color: kSecondaryColor)),
      disabledBorder: OutlineInputBorder(
        borderRadius: kBorderRadiusAll,
      ),
      // on focus  change colov
      focusedBorder: OutlineInputBorder(
          borderRadius: kBorderRadiusAll,
          borderSide: const BorderSide(color: kSecondaryColor)),

      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: kErrorBorderColor, width: kWidthOfInputBoarder),
          borderRadius: kBorderRadiusAll),
      //same on focus error color
      focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kErrorBorderColor,
            width: kWidthOfInputBoarder,
          ),
          borderRadius: kBorderRadiusAll),
    ),
    textTheme: GoogleFonts.kanitTextTheme().copyWith(
      //custom text for headline
      headlineSmall: TextStyle(
        color: kTextWhiteColor,
        fontSize: 10.sp,
      ),
      headlineMedium: TextStyle(
        color: kTextWhiteColor,
        fontWeight: FontWeight.w300,
        fontSize: 15.sp,
      ),
      headlineLarge: TextStyle(
          color: kTextWhiteColor, fontWeight: FontWeight.w400, fontSize: 35.sp
          //  SizerUtil.deviceType == DeviceType.tablet ? 22.sp : 35.sp,
          ),

      // body text style
      bodyLarge: const TextStyle(
        color: kTextWhiteColor,
        // fontSize: 11.sp,
      ),
      bodyMedium: TextStyle(
        color: kTextWhiteColor,
        fontSize: 15.sp,
      ),
      bodySmall: TextStyle(
          color: kTextWhiteColor, fontSize: 9.sp, fontWeight: FontWeight.w500),

      // title style
      titleMedium: TextStyle(
          color: kTextWhiteColor, fontSize: 17.sp, fontWeight: FontWeight.w700),
      titleSmall: TextStyle(
          color: kTextWhiteColor, fontSize: 13.sp, fontWeight: FontWeight.w500),
    ),
  );
}
