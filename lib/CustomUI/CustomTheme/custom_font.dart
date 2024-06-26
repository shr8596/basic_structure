import 'package:flutter/material.dart';


class CustomFont {


  /// //////////////////////////////////////////////////////////////////////////
  /// Pretendard_Thin 폰트
  /// //////////////////////////////////////////////////////////////////////////
  TextStyle thin({required double fontSize, required Color color}) {
    return TextStyle(
      fontWeight: FontWeight.w100,
      fontSize: fontSize,
      color: color,
    );
  }


  /// //////////////////////////////////////////////////////////////////////////
  /// Pretendard-ExtraLight 폰트
  /// //////////////////////////////////////////////////////////////////////////
  TextStyle extraLight({required double fontSize, required Color color}) {
    return TextStyle(
      fontWeight: FontWeight.w200,
      fontSize: fontSize,
      color: color,
    );
  }


  /// //////////////////////////////////////////////////////////////////////////
  /// Pretendard-Light 폰트
  /// //////////////////////////////////////////////////////////////////////////
  TextStyle light({required double fontSize, required Color color}) {
    return TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: fontSize,
      color: color,
    );
  }


  /// //////////////////////////////////////////////////////////////////////////
  /// Pretendard-Regular 폰트
  /// //////////////////////////////////////////////////////////////////////////
  TextStyle regular({required double fontSize, required Color color}) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: fontSize,
      color: color,
    );
  }


  /// //////////////////////////////////////////////////////////////////////////
  /// Pretendard-Medium 폰트
  /// //////////////////////////////////////////////////////////////////////////
  TextStyle medium({required double fontSize, required Color color}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: fontSize,
      color: color,
    );
  }


  /// //////////////////////////////////////////////////////////////////////////
  /// Pretendard-SemiBold 폰트
  /// //////////////////////////////////////////////////////////////////////////
  TextStyle semiBold({required double fontSize, required Color color}) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: fontSize,
      color: color,
    );
  }


  /// //////////////////////////////////////////////////////////////////////////
  /// Pretendard-Bold 폰트
  /// //////////////////////////////////////////////////////////////////////////
  TextStyle bold({required double fontSize, required Color color}) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: fontSize,
      color: color,
    );
  }


  /// //////////////////////////////////////////////////////////////////////////
  /// Pretendard-ExtraBold 폰트
  /// //////////////////////////////////////////////////////////////////////////
  TextStyle extraBold({required double fontSize, required Color color}) {
    return TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: fontSize,
      color: color,
    );
  }


  /// //////////////////////////////////////////////////////////////////////////
  /// Pretendard-Black 폰트
  /// //////////////////////////////////////////////////////////////////////////
  TextStyle black({required double fontSize, required Color color}) {
    return TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: fontSize,
      color: color,
    );
  }

}