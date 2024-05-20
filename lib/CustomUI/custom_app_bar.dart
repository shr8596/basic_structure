import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


/// //////////////////////////////////////////////////////////////////////////
/// 앱바 위젯
/// //////////////////////////////////////////////////////////////////////////
class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.appBar,
  });

  final AppBar appBar;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(

      // appBar 중간 로고
      title: SizedBox(
        width: 143.87.w,
        height: 20.h,
        child: const Text("ddd",),
      ),

      // appBar 왼쪽 아이콘 버튼
      leading: Padding(
        padding: EdgeInsets.only(left: 15.w),
        child: InkWell(
          onTap: () {},
        ),
      ),

      // appBar 오른쪽 아이콘 버튼
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 15.w),
          child: InkWell(
            onTap: () {},
            child: const Text("ddd",),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);

}