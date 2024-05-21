import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:social_pub/Constants/index.dart';
import 'package:social_pub/CustomUI/index.dart';


/// //////////////////////////////////////////////////////////////////////////
/// 진입점
/// //////////////////////////////////////////////////////////////////////////
void main() async{

  // 바인딩
  WidgetsFlutterBinding.ensureInitialized();

  // 화면 세로 고정
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // dotenv 활용
  await dotenv.load();
  String key1 = dotenv.get("KEY_1");

  // riverpod 초기 선언(ProviderScope)
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );

}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    // router 설정 관련 변수 선언
    final goRouter = ref.watch(goRouterProvider);

    // 화면 비율 설정
    return ScreenUtilInit(
      designSize: const Size(
        Constants.baseScreenWidth,
        Constants.baseScreenHeight,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child,) {
        return MaterialApp.router(

          // URI String을 상태 및 go_router에서 사용할 수 있는 형태로 변환해주는 함수
          routeInformationParser: goRouter.routeInformationParser,

          // route 정보 전달
          routeInformationProvider: goRouter.routeInformationProvider,

          // 위에서 변경된 값으로 실제로 어떤 라우트를 보여줄지 정하는 함수
          routerDelegate: goRouter.routerDelegate,

          debugShowCheckedModeBanner: false,

          theme: CustomThemeData().customThemeData,
        );
      },
    );

  }
}
