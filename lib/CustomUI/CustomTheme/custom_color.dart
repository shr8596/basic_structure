import 'package:flutter/material.dart';


/// //////////////////////////////////////////////////////////////////////////
/// 색상 열거형
/// //////////////////////////////////////////////////////////////////////////
enum CustomColor {

  // 녹색
  green004501, // Primary-Green700
  green06C755,
  green0D452E,
  green0E5329,
  green0F5232,
  green228B4C,
  green33BA68,
  green45A747, // Primary-Green
  green4CD080, // Primary-green2
  green667866,
  green94E3B3,
  greenC6F8DA, // bg Gre2n 100
  greenB5DCB5,
  green5AFF9B,
  green388639,

  // 주황색
  orangeF69321, // Primary-Orange
  orangeF7941D,
  orangeFF7A00,
  orangeFF8800, // Primary-Orange2
  orangeFFB35C,
  orangeFFEEDD,


  // 노란색
  yellowFFF384,
  yellowFEE500,

  // 빨간색
  redFF0000,
  redFF4444, // Red
  redFB6B33,

  // 검은색
  black000000, // Primary-Black
  black1F1F1F,

  // 흰색
  whiteF1FBF5, // Primary-bgGreen100 ???
  whiteF2F2F2,
  witheF4F5F9, // blueGreyBG100 ???
  whiteF7FAFD,
  whiteFFFFFF, // Primary-White

  // 회색
  gray2C3E60, // Primary Graybule txt
  gray46587A,
  gray666666,
  gray667BA3, // Text grey 300
  gray7A7AA3,
  gray808D80,
  gray9295A4, // Secondary-Gray
  gray979797,
  gray9EACB5,
  gray999999,
  grayAFB7BE,
  grayBCC5CC,
  grayBCC3E1,
  grayC7D8E3,
  grayECEEF4,
  grayDADADA,
  gray697191,
  grayE6E6E6,
  grayEFF1F8,
  grayF4F5F9,
  grayEEEEEE,
  grayEAECF3,
  gray8594D0,

  // 회사별 색상
  kakaoBG,
  kakaoSY,
  kakaoLB,
  naverBG,
  naverSY,
  naverLB,
  googleBG,
  googleSY,
  googleLB,
  appleBG,
  appleSY,
  appleLB,
}


/// //////////////////////////////////////////////////////////////////////////
/// Color Widget으로 변환
/// //////////////////////////////////////////////////////////////////////////
extension ConvertToColorWidget on CustomColor {
  Color get color {
    return switch (this) {
      CustomColor.green004501 => const Color(0xff004501),
      CustomColor.green06C755 => const Color(0xff06C755),
      CustomColor.green0D452E => const Color(0xff0D452E),
      CustomColor.green0E5329 => const Color(0xff0E5329),
      CustomColor.green0F5232 => const Color(0xff0F5232),
      CustomColor.green228B4C => const Color(0xff228B4C),
      CustomColor.green33BA68 => const Color(0xff33BA68),
      CustomColor.green45A747 => const Color(0xff45A747),
      CustomColor.green4CD080 => const Color(0xff4CD080),
      CustomColor.green667866 => const Color(0xff667866),
      CustomColor.green94E3B3 => const Color(0xff94E3B3),
      CustomColor.greenC6F8DA => const Color(0xffC6F8DA),
      CustomColor.greenB5DCB5 => const Color(0xffB5DCB5),
      CustomColor.green5AFF9B => const Color(0xff5AFF9B),
      CustomColor.green388639 => const Color(0xff388639),

      CustomColor.orangeF69321 => const Color(0xffF69321),
      CustomColor.orangeF7941D => const Color(0xffF7941D),
      CustomColor.orangeFF7A00 => const Color(0xffFF7A00),
      CustomColor.orangeFF8800 => const Color(0xffFF8800),
      CustomColor.orangeFFB35C => const Color(0xffFFB35C),
      CustomColor.orangeFFEEDD => const Color(0xffFFEEDD),

      CustomColor.yellowFFF384 => const Color(0xffFFF384),
      CustomColor.yellowFEE500 => const Color(0xffFEE500),

      CustomColor.redFF0000 => const Color(0xffFF0000),
      CustomColor.redFF4444 => const Color(0xffFF4444),
      CustomColor.redFB6B33 => const Color(0xfffb6b33),

      CustomColor.black000000 => const Color(0xff000000),
      CustomColor.black1F1F1F => const Color(0xff1F1F1F),

      CustomColor.whiteF1FBF5 => const Color(0xffF1FBF5),
      CustomColor.whiteF2F2F2 => const Color(0xffF2F2F2),
      CustomColor.witheF4F5F9 => const Color(0xffF4F5F9),
      CustomColor.whiteF7FAFD => const Color(0xffF7FAFD),
      CustomColor.whiteFFFFFF => const Color(0xffFFFFFF),

      CustomColor.gray2C3E60 => const Color(0xff2C3E60),
      CustomColor.gray46587A => const Color(0xff46587A),
      CustomColor.gray666666 => const Color(0xff666666),
      CustomColor.gray667BA3 => const Color(0xff667BA3),
      CustomColor.gray7A7AA3 => const Color(0xff7A7AA3),
      CustomColor.gray808D80 => const Color(0xff808D80),
      CustomColor.gray9295A4 => const Color(0xff9295A4),
      CustomColor.gray979797 => const Color(0xff979797),
      CustomColor.gray9EACB5 => const Color(0xff9EACB5),
      CustomColor.gray999999 => const Color(0xff999999),
      CustomColor.grayAFB7BE => const Color(0xffAFB7BE),
      CustomColor.grayBCC5CC => const Color(0xffBCC5CC),
      CustomColor.grayBCC3E1 => const Color(0xffBCC3E1),
      CustomColor.grayC7D8E3 => const Color(0xffC7D8E3),
      CustomColor.grayECEEF4 => const Color(0xffECEEF4),
      CustomColor.grayDADADA => const Color(0xffDADADA),
      CustomColor.gray697191 => const Color(0xff697191),
      CustomColor.grayE6E6E6 => const Color(0xffE6E6E6),
      CustomColor.grayEFF1F8 => const Color(0xffEFF1F8),
      CustomColor.grayF4F5F9 => const Color(0xfff4f5f9),
      CustomColor.grayEEEEEE => const Color(0xffEEEEEE),
      CustomColor.grayEAECF3 => const Color(0xffEAECF3),
      CustomColor.gray8594D0 => const Color(0xff8594D0),

      CustomColor.kakaoBG => const Color(0xfffee500),
      CustomColor.kakaoSY => const Color(0xff000000),
      CustomColor.kakaoLB => const Color(0xD8000000),
      CustomColor.naverBG => const Color(0xff03c75a),
      CustomColor.naverSY => const Color(0xffffffff),
      CustomColor.naverLB => const Color(0xffffffff),
      CustomColor.googleBG => const Color(0xffffffff),
      CustomColor.googleSY => const Color(0xffffffff),
      CustomColor.googleLB => const Color(0xff000000),
      CustomColor.appleBG => const Color(0xff000000),
      CustomColor.appleSY => const Color(0xffffffff),
      CustomColor.appleLB => const Color(0xffffffff),
    };
  }
}
