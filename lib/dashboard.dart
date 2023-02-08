import 'package:admin_ui/components/appbarIconItems.dart';
import 'package:admin_ui/components/barChartComponent.dart';
import 'package:admin_ui/components/header.dart';
import 'package:admin_ui/components/infoCard.dart';
import 'package:admin_ui/components/payementDetailList.dart';
import 'package:admin_ui/components/side_menu.dart';
import 'package:admin_ui/config/size_config.dart';
import 'package:admin_ui/style/colors.dart';
import 'package:admin_ui/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              flex: 10,
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 30,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Header(),
                            SizedBox(
                              height: SizeConfig.blockSizeVertical * 4,
                            ),
                            SizedBox(
                              width: SizeConfig.screenWidth,
                              child: Wrap(
                                runSpacing: 20,
                                spacing: 20,
                                alignment: WrapAlignment.spaceBetween,
                                children: [
                                  InfoCard(
                                    icon: "assets/credit-card.svg",
                                    label: "Transfer via \nCard number",
                                    amount: "\$ 1200",
                                  ),
                                  InfoCard(
                                    icon: "assets/transfer.svg",
                                    label: "Transfer via \nOnline bank",
                                    amount: "\$ 150",
                                  ),
                                  InfoCard(
                                    icon: "assets/bank.svg",
                                    label: "Transfer via \nSame bank",
                                    amount: "\$ 1500",
                                  ),
                                  InfoCard(
                                    icon: "assets/invoice.svg",
                                    label: "Transfer via \nOther bank",
                                    amount: "\$ 1500",
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.blockSizeVertical * 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    PrimaryText(
                                      text: "Balance",
                                      size: 16,
                                      color: AppColors.secondary,
                                    ),
                                    PrimaryText(
                                      text: "\$1500",
                                      size: 30,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ],
                                ),
                                PrimaryText(
                                  text: "Post 30 days",
                                  size: 16,
                                  // fontWeight: FontWeight.w800,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 3,
                      ),
                      Container(
                        height: 300,
                        child: BarCharComponent(),
                      ),
                    ],
                  ),
                ),
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
