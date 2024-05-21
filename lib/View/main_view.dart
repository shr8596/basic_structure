import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_pub/CustomUI/index.dart';

import 'package:social_pub/Settings/custom_logger.dart';


class MainView extends ConsumerStatefulWidget {
  const MainView({super.key});

  @override
  ConsumerState<MainView> createState() => _WidgetFromState();
}

class _WidgetFromState extends ConsumerState<MainView> {


  /// //////////////////////////////////////////////////////////////////////////
  /// variable
  /// //////////////////////////////////////////////////////////////////////////
  final String a = "a";
  final List<String> list = [];


  /// //////////////////////////////////////////////////////////////////////////
  /// function
  /// //////////////////////////////////////////////////////////////////////////
  Future<void> function1() async {
    CustomLogger().printD("function1");
  }

  Future<void> function2() async {
    CustomLogger().printD("function2");
  }


  /// //////////////////////////////////////////////////////////////////////////
  /// widget life cycle
  /// //////////////////////////////////////////////////////////////////////////
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar()),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          _buildBody1(context),
          _buildBody2(context),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }


  /// //////////////////////////////////////////////////////////////////////////
  /// build widget
  /// //////////////////////////////////////////////////////////////////////////
  Widget _buildBody1(BuildContext context) {
    return Text(
      "WidgetForm",
      style: CustomFont().semiBold(
        fontSize: 24.sp,
        color: CustomColor.black000000.color,
      ),
    );
  }

  Widget _buildBody2(BuildContext context) {
    return Container(
      width: 100.w,
      height: 100.h,
      color: Colors.red,
    );
  }

}
