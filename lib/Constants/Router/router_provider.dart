import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:social_pub/Settings/custom_logger.dart';
import 'package:social_pub/View/index.dart';
import 'index.dart';


// 글로벌 키 생성
final GlobalKey<NavigatorState> _routerKey = GlobalKey<NavigatorState>();

// provider 객체 생성
final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(


    /// //////////////////////////////////////////////////////////////////////////
    /// key 부여
    /// //////////////////////////////////////////////////////////////////////////
    navigatorKey: _routerKey,


    /// //////////////////////////////////////////////////////////////////////////
    /// 초기값 부여
    /// //////////////////////////////////////////////////////////////////////////
    initialLocation: RouterPath.mainViewPath,


    /// //////////////////////////////////////////////////////////////////////////
    /// 페이지 이동 중 오류 발생 시 화면
    /// //////////////////////////////////////////////////////////////////////////
    errorBuilder: (BuildContext context, GoRouterState state) {
      CustomLogger().printW('GoRoute error page!'
          '\n${state.error}'
          '\n${state.name}'
          '\n${state.path}'
      );
      return Scaffold(
        body: GestureDetector(
          onTap: () {
            context.goNamed(RouterPath.mainViewPath);
          },
          child: const Center(
            child: Text("404: Page Not Found"),
          ),
        ),
      );
    },


    /// //////////////////////////////////////////////////////////////////////////
    /// 라우터 관리
    /// //////////////////////////////////////////////////////////////////////////
    routes: <GoRoute>[

      // 0. main_view
      GoRoute(
        path: RouterPath.mainViewPath,
        builder: (BuildContext context, GoRouterState state) => const MainView(),
        routes: const [

          ///TODO 아래에 라우터 관리 하기

        ],
      ),

    ],

  );
});
