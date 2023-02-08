import 'package:admin_ui/components/payementListTitle.dart';
import 'package:admin_ui/config/size_config.dart';
import 'package:admin_ui/data.dart';
import 'package:admin_ui/style/colors.dart';
import 'package:admin_ui/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PayementDetailList extends StatelessWidget {
  const PayementDetailList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Bank card image
        SizedBox(
          height: SizeConfig.blockSizeVertical * 5,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                30,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.iconGray,
                  blurRadius: 15,
                  offset: Offset(
                    10,
                    15,
                  ),
                ),
              ]),
          child: Image.asset(
            "assets/card.png",
          ),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 5,
        ),
        // Date and title of recent activities
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: "Upcomming payements",
              size: 18,
              fontWeight: FontWeight.w800,
            ),
            PrimaryText(
              text: "8 Feb 2023",
              size: 14,
              fontWeight: FontWeight.w800,
              color: AppColors.secondary,
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 2,
        ),
        Column(
          children: List.generate(
            recentActivities.length,
            (index) => PayementListTitle(
              icon: recentActivities[index]["icon"]!,
              label: recentActivities[index]["label"]!,
              amount: recentActivities[index]["amount"]!,
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 5,
        ),
        // Date and title of recent activities
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: "Upcomming payements",
              size: 18,
              fontWeight: FontWeight.w800,
            ),
            PrimaryText(
              text: "8 Feb 2023",
              size: 14,
              fontWeight: FontWeight.w800,
              color: AppColors.secondary,
            ),
          ],
        ),

        SizedBox(
          height: SizeConfig.blockSizeVertical * 2,
        ),
        Column(
          children: List.generate(
            upcomingPayments.length,
            (index) => PayementListTitle(
              icon: upcomingPayments[index]["icon"]!,
              label: upcomingPayments[index]["label"]!,
              amount: upcomingPayments[index]["amount"]!,
            ),
          ),
        ),
      ],
    );
  }
}
