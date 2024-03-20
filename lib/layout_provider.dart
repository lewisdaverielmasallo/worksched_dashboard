import 'package:flutter/material.dart';
import 'package:worksched_dashboard/themes.dart';

class LayoutProvider {
  static List<String> bottomNav = [
    "Timelog",
    "Change Shift",
    "Change Day Type",
    "Official Business",
    "Leaves",
    "Reimburstment",
    "Overtime",
    "Work From Home",
    "Undertime",
    "My Request"
  ];

  static List<String> leftNav = [
    "Dashboard",
    "Time Sheet",
    "Daily Time Record",
    "Leave Ledger",
    "Loan Ledger",
    "Performance Evaluation",
    "On Boarding",
    "FAQs",
    "Accountability Scanner",
    "Reports",
  ];

  static List<String> midNav = [
    "Bundy",
    "Balances",
    "Anouncements",
    "Survey",
  ];

  static List<String> topNav = [
    "Calendar",
    "Analytics",
    "My Team",
  ];

  static List<Widget> getBottomNav(BuildContext context) {
    return [
      for (String title in bottomNav)
        Card(
          elevation: CustomTheme.cardElevation,
          surfaceTintColor: CustomTheme.background,
          child: SizedBox(
            height: 126,
            width: 142,
            child: Column(
              children: [
                Image(
                  image: AssetImage(
                    'assets/bottomnav/${title.toLowerCase().replaceAll(" ", "_")}32x32.png',
                  ),
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ),
    ];
  }

  static List<Widget> getLeftNavs(BuildContext context) {
    return [
      for (String title in leftNav)
        Card(
          elevation: CustomTheme.cardElevation,
          color: CustomTheme.colorBlueMain,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
          margin: const EdgeInsets.only(right: 4),
          child: Row(children: [
            Image(
              image: AssetImage(
                  'assets/leftnav/${title.toLowerCase().replaceAll(" ", "_")}18x18.png'),
              height: 50,
              width: 50,
            ),
            Text(title, style: Theme.of(context).textTheme.labelMedium),
          ]),
        ),
    ];
  }

  static List<Widget> getMidNavs(BuildContext context) {
    return [
      for (String title in midNav)
        Card(
          elevation: CustomTheme.cardElevation,
          surfaceTintColor: CustomTheme.background,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            height: 170,
            width: 444,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ),
    ];
  }

  static List<Widget> getTopNavs(BuildContext context) {
    return [
      for (String title in topNav)
        Card(
          elevation: CustomTheme.cardElevation,
          surfaceTintColor: CustomTheme.background,
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            height: 92,
            width: 282,
            child: Row(
              children: [
                SizedBox(
                  height: 100,
                  width: 154,
                  child: OverflowBox(
                    maxWidth: 160,
                    maxHeight: 160,
                    child: Transform(
                      transform: Matrix4.rotationZ(0.188),
                      child: Image(
                        image: AssetImage(
                          'assets/topnav/${title.toLowerCase().replaceAll(" ", "_")}32x32.png',
                        ),
                        height: 200,
                        width: 200,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
    ];
  }
}
