import 'package:admin_ui/config/responsive.dart';
import 'package:admin_ui/style/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarCharComponent extends StatelessWidget {
  const BarCharComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        borderData: FlBorderData(show: false),
        alignment: BarChartAlignment.spaceBetween,
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            axisNameSize: 20,
            sideTitles: SideTitles(
              reservedSize: 30,
              showTitles: true,
              getTitlesWidget: (value, meta) {
                TextStyle style = TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                );

                if (value == 0) {
                  return Text(
                    "0",
                    style: style,
                  );
                } else if (value == 30) {
                  return Text(
                    "30k",
                    style: style,
                  );
                } else if (value == 60) {
                  return Text(
                    "60k",
                    style: style,
                  );
                } else if (value == 90) {
                  return Text(
                    "90k",
                    style: style,
                  );
                } else {
                  return Text(
                    "",
                    style: style,
                  );
                }
              },
            ),
          ),
          bottomTitles: AxisTitles(
            axisNameSize: 20,
            sideTitles: SideTitles(
              reservedSize: 30,
              showTitles: true,
              getTitlesWidget: (value, meta) {
                TextStyle style = TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                );
                String text = "";

                if (value == 0) {
                  text = "JAN";
                } else if (value == 1) {
                  text = "FEB";
                } else if (value == 2) {
                  text = "MAR";
                } else if (value == 3) {
                  text = "APR";
                } else if (value == 4) {
                  text = "MAY";
                } else if (value == 5) {
                  text = "JUN";
                } else if (value == 6) {
                  text = "JUL";
                } else if (value == 7) {
                  text = "AUG";
                } else if (value == 8) {
                  text = "SEP";
                } else if (value == 9) {
                  text = "OCT";
                } else if (value == 10) {
                  text = "NOV";
                } else if (value == 11) {
                  text = "DEC";
                } else {
                  text = "";
                }

                return Text(
                  text,
                  style: style,
                );
              },
            ),
          ),
        ),
        gridData: FlGridData(
          drawHorizontalLine: true,
          horizontalInterval: 20,
        ),
        barGroups: [
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(
                toY: 10,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context) ? 40 : 10,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                toY: 50,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context) ? 40 : 10,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(x: 2, barRods: [
            BarChartRodData(
              toY: 30,
              color: Colors.black,
              borderRadius: BorderRadius.circular(0),
              width: Responsive.isDesktop(context) ? 40 : 10,
              backDrawRodData: BackgroundBarChartRodData(
                toY: 90,
                show: true,
                color: AppColors.barBg,
              ),
            ),
          ]),
          BarChartGroupData(
            x: 3,
            barRods: [
              BarChartRodData(
                toY: 80,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context) ? 40 : 10,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(x: 4, barRods: [
            BarChartRodData(
              toY: 70,
              color: Colors.black,
              borderRadius: BorderRadius.circular(0),
              width: Responsive.isDesktop(context) ? 40 : 10,
              backDrawRodData: BackgroundBarChartRodData(
                toY: 90,
                show: true,
                color: AppColors.barBg,
              ),
            ),
          ]),
          BarChartGroupData(x: 5, barRods: [
            BarChartRodData(
              toY: 20,
              color: Colors.black,
              borderRadius: BorderRadius.circular(0),
              width: Responsive.isDesktop(context) ? 40 : 10,
              backDrawRodData: BackgroundBarChartRodData(
                toY: 90,
                show: true,
                color: AppColors.barBg,
              ),
            ),
          ]),
          BarChartGroupData(x: 6, barRods: [
            BarChartRodData(
              toY: 90,
              color: Colors.black,
              borderRadius: BorderRadius.circular(0),
              width: Responsive.isDesktop(context) ? 40 : 10,
              backDrawRodData: BackgroundBarChartRodData(
                toY: 90,
                show: true,
                color: AppColors.barBg,
              ),
            ),
          ]),
          BarChartGroupData(x: 7, barRods: [
            BarChartRodData(
              toY: 60,
              color: Colors.black,
              borderRadius: BorderRadius.circular(0),
              width: Responsive.isDesktop(context) ? 40 : 10,
              backDrawRodData: BackgroundBarChartRodData(
                toY: 90,
                show: true,
                color: AppColors.barBg,
              ),
            )
          ]),
          BarChartGroupData(x: 8, barRods: [
            BarChartRodData(
              toY: 90,
              color: Colors.black,
              borderRadius: BorderRadius.circular(0),
              width: Responsive.isDesktop(context) ? 40 : 10,
              backDrawRodData: BackgroundBarChartRodData(
                  toY: 90, show: true, color: AppColors.barBg),
            ),
          ]),
          BarChartGroupData(x: 9, barRods: [
            BarChartRodData(
              toY: 10,
              color: Colors.black,
              borderRadius: BorderRadius.circular(0),
              width: Responsive.isDesktop(context) ? 40 : 10,
              backDrawRodData: BackgroundBarChartRodData(
                toY: 90,
                show: true,
                color: AppColors.barBg,
              ),
            ),
          ]),
          BarChartGroupData(
            x: 10,
            barRods: [
              BarChartRodData(
                toY: 40,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context) ? 40 : 10,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 11,
            barRods: [
              BarChartRodData(
                toY: 80,
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context) ? 40 : 10,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
        ],
      ),

      swapAnimationDuration: Duration(milliseconds: 150), // Optional
      swapAnimationCurve: Curves.linear,
    );
  }
}
