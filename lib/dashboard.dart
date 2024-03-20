import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 4,
        child: Container(),
      ),
      const Expanded(
        flex: 16,
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: TopNav(),
            ),
            SizedBox(
              height: 400,
              child: BottomNav(),
            ),
          ],
        ),
      ),
    ]);
  }
}

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: StaticData.getBottomNav(context),
    );
  }
}

class LeftNav extends StatelessWidget {
  const LeftNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: StaticData.getBottomNav(context),
    );
  }
}

class MidNav extends StatelessWidget {
  const MidNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: StaticData.getBottomNav(context),
    );
  }
}

class TopNav extends StatelessWidget {
  const TopNav({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> list = StaticData.getTopNavs(context);
    return ListView(
      scrollDirection: Axis.horizontal,
      itemExtent: MediaQuery.of(context).size.width / 3,
      shrinkWrap: true,
      children: list,
    );
  }
}

class StaticData {
  static final bottomnav = [
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

  static final leftnav = [
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

  static final midnav = [
    // "Bundy",
    // "Balances",
    // "Anouncements",
    // "Survey",
  ];

  static final topnav = [
    // "Calendar",
    // "Analytics",
    // "My Team",
  ];

  static List<Widget> getLeftNavs() {
    return [
      for (String title in leftnav)
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

  static List<Widget> getMidNavs() {
    return [
      for (String title in midnav)
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

  static List<Widget> getBottomNav(BuildContext context) {
    return [
      for (String title in bottomnav)
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

  static List<Widget> getTopNavs(BuildContext context) {
    return [
      for (String title in topnav)
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            border: Border.all(color: Colors.black, width: 1),
          ),
          clipBehavior: Clip.antiAlias,
          child: Row(
            children: [
              Image(
                image: AssetImage(
                  'assets/res/topnav/${title.toLowerCase().replaceAll(" ", "_")}1024x1024.png',
                ),
                height: 200,
                width: 200,
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
