import 'package:admin_ui/style/colors.dart';
import 'package:admin_ui/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PayementListTitle extends StatelessWidget {
  final String amount;
  final String label;
  final String icon;

  const PayementListTitle({
    Key? key,
    required this.amount,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 0, right: 20),
      visualDensity: VisualDensity.standard,
      leading: Container(
        width: 50,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SvgPicture.asset(
          icon,
          width: 20,
        ),
      ),
      title: PrimaryText(
        text: label,
        size: 14,
        fontWeight: FontWeight.w500,
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryText(
            text: "Sucessfuly",
            size: 12,
            color: AppColors.secondary,
          ),
          PrimaryText(
            text: amount,
            size: 16,
            color: AppColors.secondary,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
