import 'package:admin_ui/config/size_config.dart';
import 'package:admin_ui/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        color: AppColors.secondaryBg,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 35,
                  width: 35,
                  child: SvgPicture.asset(
                    "assets/mac-action.svg",
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/home.svg",
                  color: AppColors.iconGray,
                ),
                iconSize: 20,
                padding: EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/pie-chart.svg",
                  color: AppColors.iconGray,
                ),
                iconSize: 20,
                padding: EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/clipboard.svg",
                  color: AppColors.iconGray,
                ),
                iconSize: 20,
                padding: EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/credit-card.svg",
                  color: AppColors.iconGray,
                ),
                iconSize: 20,
                padding: EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/trophy.svg",
                  color: AppColors.iconGray,
                ),
                iconSize: 20,
                padding: EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/invoice.svg",
                  color: AppColors.iconGray,
                ),
                iconSize: 20,
                padding: EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
