import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


/// //////////////////////////////////////////////////////////////////////////
/// 서랍 위젯
/// //////////////////////////////////////////////////////////////////////////
class CustomDrawer extends ConsumerStatefulWidget {
  const CustomDrawer({super.key});

  @override
  ConsumerState<CustomDrawer> createState() => _MyPageDrawerViewState();
}

class _MyPageDrawerViewState extends ConsumerState<CustomDrawer> {


  /// //////////////////////////////////////////////////////////////////////////
  /// widget life cycle
  /// //////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Text("MyPageDrawerView"),
        ],
      ),
    );
  }

}
