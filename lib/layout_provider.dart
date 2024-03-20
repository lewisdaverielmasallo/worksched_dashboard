import 'package:flutter/material.dart';

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
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(color: Theme.of(context).shadowColor, width: 1),
          ),
          height: 134,
          width: 150,
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
    ];
  }

  static List<Widget> getLeftNavs(BuildContext context) {
    return [
      for (String title in leftNav)
        ListTile(
          title: Text(title),
          leading: Image(
            image: AssetImage(
                'assets/leftnav/${title.toLowerCase().replaceAll(" ", "_")}18x18.png'),
            height: 50,
            width: 50,
          ),
        ),
    ];
  }

  static List<Widget> getMidNavs(BuildContext context) {
    return [
      for (String title in midNav)
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(24),
            ),
            border: Border.all(color: Theme.of(context).shadowColor, width: 1),
          ),
          height: 178,
          width: 454,
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
    ];
  }

  static List<Widget> getTopNavs(BuildContext context) {
    // image height = 100
    // image width = 154
    // tile height 100
    // tile width = 290
    // image rotationZ 18.8
    return [
      for (String title in topNav)
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(24),
            ),
            border: Border.all(color: Theme.of(context).shadowColor, width: 1),
          ),
          height: 100,
          width: 290,
          clipBehavior: Clip.antiAlias,
          child: Row(
            children: [
              Transform(
                transform: Matrix4.rotationZ(0.188)..translate(-40, -20, 0),
                origin: const Offset(-50, 10),
                child: Image(
                  image: AssetImage(
                    'assets/topnav/${title.toLowerCase().replaceAll(" ", "_")}32x32.png',
                  ),
                  height: 154,
                  width: 154,
                  fit: BoxFit.contain,
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
    ];
  }
}
