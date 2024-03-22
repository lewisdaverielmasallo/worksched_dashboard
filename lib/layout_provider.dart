import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  static Map<String, bool> leftNav = {
    "Dashboard": false,
    "Time Sheet": false,
    "Daily Time Record": false,
    "Leave Ledger": false,
    "Loan Ledger": false,
    "Performance Evaluation": false,
    "On Boarding": false,
    "FAQs": false,
    "Accountability Scanner": false,
    "Reports": false,
  };

  static Map<String, Container> midNav = {
    "Bundy": Bundy(),
    "Balances": Balances(),
    "Anouncements": Anouncements(),
    "Survey": Survey(),
  };

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
      for (String title in leftNav.keys)
        ListTile(
          dense: true,
          hoverColor: CustomTheme.colorBlueMain.withOpacity(0.2),
          focusColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          selected: leftNav[title]!,
          selectedColor: Colors.white,
          selectedTileColor: Colors.blue[800],
          title: Text(title),
          leading: Image(
            image: AssetImage(
                'assets/leftnav/${title.toLowerCase().replaceAll(" ", "_")}18x18.png'),
            height: 25,
            width: 25,
            fit: BoxFit.fill,
            color: leftNav[title]! ? Colors.white : Colors.blue,
            colorBlendMode: BlendMode.srcIn,
          ),
          onTap: () {
            leftNav = leftNav.map((title, selected) => MapEntry(title, false));

            leftNav[title] = true;
            (context as Element).markNeedsBuild();
          },
        ),
    ];
  }

  static List<Widget> getMidNavs(BuildContext context) {
    return [
      for (String title in midNav.keys)
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
                SizedBox(height: 120, width: 395, child: midNav[title]!)
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

class Survey extends Container {
  Survey({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Container(),
    );
  }
}

class Anouncements extends Container {
  Anouncements({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Container(),
    );
  }
}

class Balances extends Container {
  Balances({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Container(),
    );
  }
}

class Bundy extends Container {
  Bundy({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "10:23 AM",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                "Thursday",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                    ),
              ),
              const SizedBox(height: 12),
              Text(
                "Shift Schedule",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                "9:00 AM - 6:00 PM",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                    ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Text(
                "Day Type",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                "Regular day",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                    ),
              ),
              Align(
                alignment: Alignment.center,
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.history),
                  label: Text(
                    "Recent Logs",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: CustomTheme.colorBlueMain),
                  ),
                ),
              ),
              Row(
                children: [
                  OutlinedButton(onPressed: () {}, child: const Text("IN")),
                  const SizedBox(width: 20),
                  OutlinedButton(onPressed: () {}, child: const Text("OUT")),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
