import 'package:flutter/material.dart';

class LayoutProvider {
  static List<String> bottomNav = [
    // "Timelog",
    // "Change Shift",
    // "Change Day Type",
    // "Official Business",
    // "Leaves",
    // "Reimburstment",
    // "Overtime",
    // "Work From Home",
    // "Undertime",
    // "My Request"
  ];

  static List<String> leftNav = [
    // "Dashboard",
    // "Time Sheet",
    // "Date Time Record",
    // "Leave Ledger",
    // "Loan Ledger",
    // "Performance Evaluation",
    // "On Boarding",
    // "FAQs",
    // "Accountability Scanner",
    // "Reports",
  ];

  static List<String> midNav = [
    // "Bundy",
    // "Balances",
    // "Anouncements",
    // "Survey",
  ];

  static List<String> topNav = [
    "Calendar",
    "Analytics",
    "My Team",
  ];

  static List<Widget> getBottomNav(BuildContext context) {
    return [
      for (String title in bottomNav)
        SizedBox(
          width: 200,
          child: Column(
            children: [
              Image(
                image: AssetImage(
                  'assets/res/bottomnav/${title.toLowerCase().replaceAll(" ", "_")}1024x1024.png',
                ),
                height: 200,
                width: 200,
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
                'assets/res/leftnav/${title.toLowerCase().replaceAll(" ", "_")}1024x1024.png'),
            height: 50,
            width: 50,
          ),
        ),
    ];
  }

  static List<Widget> getMidNavs(BuildContext context) {
    return [
      for (String title in midNav)
        ListTile(
          title: Text(title),
          leading: Image(
            image: AssetImage(
                'assets/res/midnav/${title.toLowerCase().replaceAll(" ", "_")}1024x1024.png'),
            height: 50,
            width: 50,
          ),
        ),
    ];
  }

  static List<Widget> getTopNavs(BuildContext context) {
    return [
      for (String title in topNav)
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(24),
            ),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          height: 100,
          width: 290,
          clipBehavior: Clip.antiAlias,
          child: Row(
            children: [
              // Image(
              //   image: AssetImage(
              //     'assets/res/topnav/${title.toLowerCase().replaceAll(" ", "_")}1024x1024.png',
              //   ),
              //   width: 100,
              // ),
              const SizedBox(
                height: 150,
                width: 150,
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
