import 'package:admin_ui/components/appbarIconItems.dart';
import 'package:admin_ui/components/payementDetailList.dart';
import 'package:admin_ui/components/side_menu.dart';
import 'package:admin_ui/config/size_config.dart';
import 'package:admin_ui/style/colors.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: SideMenu(),
            ),
            Expanded(
              flex: 15,
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight,
                color: AppColors.secondaryBg,
                padding: EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 30,
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 30,
                    ),
                    child: Column(
                      children: [
                        AppBarIconItems(),
                        PayementDetailList(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
