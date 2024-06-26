import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_pub/CustomUI/CustomTheme/index.dart';


/// //////////////////////////////////////////////////////////////////////////
/// 앱 전체 기본 테마 설정
/// //////////////////////////////////////////////////////////////////////////
class CustomThemeData {
  final ThemeData customThemeData = ThemeData(

    /// //////////////////////////////////////////////////////////////////////////
    /// 기본 설정 값
    /// //////////////////////////////////////////////////////////////////////////
    useMaterial3: true,                           // material 3 디자인(전보다 업그레이드 된 디자인) 적용
    brightness: Brightness.light,                 // 스마트폰 light 테마(값을 Brightness.light로 하면 다크 모드)
    primaryColor: CustomColor.whiteFFFFFF.color,


    /// //////////////////////////////////////////////////////////////////////////
    /// 폰트 기본값
    /// //////////////////////////////////////////////////////////////////////////
    fontFamily: "Pretendard",


    /// //////////////////////////////////////////////////////////////////////////
    /// 앱바 테마 설정
    /// //////////////////////////////////////////////////////////////////////////
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: CustomColor.whiteFFFFFF.color,
      surfaceTintColor: Colors.transparent,
    ),


    /// //////////////////////////////////////////////////////////////////////////
    /// 하단바 테마 설정
    /// //////////////////////////////////////////////////////////////////////////
    bottomNavigationBarTheme: BottomNavigationBarThemeData(

      // 배경색
      backgroundColor: CustomColor.whiteFFFFFF.color,

      // 항목 선택 시 액션 x
      type: BottomNavigationBarType.fixed,

      // 선택된 라벨
      showSelectedLabels: true, // 선택된 라벨 보이기 여부
      selectedItemColor: CustomColor.green45A747.color,

      // 선택 안 된 라벨
      showUnselectedLabels: true, // 선택 안 된 라벨 보이기 여부
      unselectedItemColor: CustomColor.gray2C3E60.color,
    ),


    /// //////////////////////////////////////////////////////////////////////////
    /// 색상 기본값
    /// //////////////////////////////////////////////////////////////////////////
    colorScheme: ColorScheme.light(
      background: CustomColor.whiteFFFFFF.color,
      brightness: Brightness.light,
    ),


    /// //////////////////////////////////////////////////////////////////////////
    /// 서랍 테마 설정
    /// //////////////////////////////////////////////////////////////////////////
    drawerTheme: DrawerThemeData(
      width: 306.w,
      backgroundColor: CustomColor.whiteFFFFFF.color,
      surfaceTintColor: CustomColor.whiteFFFFFF.color,
    ),


    /// //////////////////////////////////////////////////////////////////////////
    /// 팝업창 테마 설정
    /// //////////////////////////////////////////////////////////////////////////
    dialogTheme: DialogTheme(
      surfaceTintColor: CustomColor.whiteFFFFFF.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.sp),
      ),
    ),

  );

}
