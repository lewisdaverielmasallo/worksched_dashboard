import 'package:flutter/material.dart';
import 'package:worksched_dashboard/themes.dart';

class LayoutProvider {
  static List<String> bottomNav = [
    "Timelog", // Alternate
    "Reimburstment",
    "Change Shift",
    "Overtime",
    "Change Day Type",
    "Work From Home",
    "Official Business",
    "Undertime",
    "Leaves",
    "My Request",
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
        IconButton.filled(
          style: IconButton.styleFrom(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
            backgroundColor: CustomTheme.colorBlueFaint,
            alignment: Alignment.center,
            elevation: 0.0,
            shape: CustomTheme.roundedCorner,
          ),
          onPressed: () {
            print("TEST");
          },
          hoverColor: CustomTheme.colorBlueFaint,
          icon: SizedBox(
            height: 85,
            width: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(
                    'assets/bottomnav/${title.toLowerCase().replaceAll(" ", "_")}32x32.png',
                  ),
                  height: 60,
                  width: 60,
                ),
                const SizedBox(height: 4),
                Text(title, overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ),
    ];
    // Card(
    //         elevation: CustomTheme.cardElevation,
    //         surfaceTintColor: CustomTheme.background,
    //         child: SizedBox(
    //           height: 126,
    //           width: 142,
    //           child: Column(
    //             children: [
    //               Image(
    //                 image: AssetImage(
    //                   'assets/bottomnav/${title.toLowerCase().replaceAll(" ", "_")}32x32.png',
    //                 ),
    //                 height: 100,
    //                 width: 100,
    //                 fit: BoxFit.contain,
    //               ),
    //               Text(
    //                 title,
    //                 style: Theme.of(context).textTheme.titleSmall,
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
  }

  static List<Widget> getLeftNavs(BuildContext context) {
    return [
      for (String title in leftNav.keys)
        ListTile(
          dense: true,
          hoverColor: CustomTheme.colorBlueFaint,
          focusColor: Colors.blue,
          shape: CustomTheme.innerRoundedCorner,
          selected: leftNav[title]!,
          selectedColor: CustomTheme.background,
          selectedTileColor: CustomTheme.colorBlueMain,
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
          shape: CustomTheme.roundedCorner,
          color: CustomTheme.background,
          surfaceTintColor: CustomTheme.background,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
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
          color: CustomTheme.background,
          shape: CustomTheme.roundedCorner,
          surfaceTintColor: CustomTheme.background,
          clipBehavior: Clip.antiAlias,
          child: IconButton(
            style: IconButton.styleFrom(
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
              elevation: 0.0,
              shape: CustomTheme.roundedCorner,
            ),
            hoverColor: CustomTheme.colorBlueFaint,
            onPressed: () {
              print("Test");
            },
            icon: SizedBox(
              width: 282,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 100,
                    width: 154,
                    child: OverflowBox(
                      maxWidth: 200,
                      maxHeight: 160,
                      child: Transform(
                        transform: Matrix4.rotationZ(0.188),
                        child: Image(
                          image: AssetImage(
                            'assets/topnav/${title.toLowerCase().replaceAll(" ", "_")}32x32.png',
                          ),
                          height: 100,
                          width: 100,
                          fit: BoxFit.fill,
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
        ),
      // Card(
      //   elevation: CustomTheme.cardElevation,
      //   surfaceTintColor: CustomTheme.background,
      //   clipBehavior: Clip.antiAlias,
      //   child: SizedBox(
      //     width: 282,
      //     child: Row(
      //       mainAxisSize: MainAxisSize.max,
      //       children: [
      //         SizedBox(
      //           height: 100,
      //           width: 154,
      //           child: OverflowBox(
      //             maxWidth: 200,
      //             maxHeight: 160,
      //             child: Transform(
      //               transform: Matrix4.rotationZ(0.188),
      //               child: Image(
      //                 image: AssetImage(
      //                   'assets/topnav/${title.toLowerCase().replaceAll(" ", "_")}32x32.png',
      //                 ),
      //                 height: 100,
      //                 width: 100,
      //                 fit: BoxFit.fill,
      //               ),
      //             ),
      //           ),
      //         ),
      //         Align(
      //           alignment: Alignment.center,
      //           child: Text(
      //             title,
      //             style: Theme.of(context).textTheme.titleLarge,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    ];
  }

  static double reduceScreen({
    required BuildContext context,
    List<double>? widthConstrains,
  }) {
    double screen = MediaQuery.of(context).size.width;
    if (widthConstrains != null) {
      return screen -
          widthConstrains.reduce((value, element) => value + element);
    }
    return screen;
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
          flex: 5,
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
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const SizedBox(height: 12),
              Text(
                "Day Type",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                "Regular Day",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Text(
                "Shift Schedule:",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                "9:00 AM - 6:00 PM",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(child: button(context, "IN", false)),
                  const SizedBox(width: 8),
                  Expanded(child: button(context, "OUT", true))
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.history),
                  label: Text(
                    "RECENT LOGS",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: CustomTheme.colorBlueMain),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget button(BuildContext context, String title, bool selected) {
    return ElevatedButton(
      onPressed: () {
        print("Test");
      },
      style: ElevatedButton.styleFrom(
        shape: CustomTheme.roundedCorner,
        backgroundColor: selected ? CustomTheme.colorBlueMain : null,
      ),
      child: SizedBox(
        height: 45,
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: selected
                    ? CustomTheme.background
                    : CustomTheme.colorBlueMain,
                fontSize: 12,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}

class Anouncements extends Container {
  Anouncements({super.key});
  final Map<String, String> announcements = {
    "September 12, 2023": "Worksched v3",
    "September 13, 2023": "Schoolsched v4",
    "September 14, 2023": "Churchsched v5",
    "September 15, 2023": "Sleepsched v6",
  };

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    return Scrollbar(
      controller: controller,
      thumbVisibility: true,
      child: ListView(
        padding: const EdgeInsets.only(right: 8),
        controller: controller,
        children: [
          for (String key in announcements.keys)
            ListTile(
              shape: CustomTheme.innerRoundedCorner,
              hoverColor: CustomTheme.colorBlueFaint,
              onTap: () {
                print("Test");
              },
              title: Column(
                children: [
                  Text(
                    key,
                    style: const TextStyle(
                      letterSpacing: 0.5,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.announcement, color: Colors.blue[800]),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          announcements[key]!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: const TextStyle(height: 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class Balances extends Container {
  Balances({super.key});
  final List<MapEntry<String, MapEntry<String, double>>> data = [
    const MapEntry("SL", MapEntry("Sick Leave", 14.00)),
    const MapEntry("VL", MapEntry("Vacation Leave", 11.00)),
    const MapEntry("GL", MapEntry("Graduation Leave", 0.00)),
    const MapEntry("OL", MapEntry("Offset Leave", 0.00)),
  ];
  @override
  Widget build(BuildContext context) {
    ScrollController scrollCntrlr = ScrollController();
    return Scrollbar(
      controller: scrollCntrlr,
      thumbVisibility: true,
      child: Material(
        child: ListView.builder(
          padding: const EdgeInsets.only(right: 8),
          controller: scrollCntrlr,
          itemCount: data.length,
          itemBuilder: (context, index) {
            var item = data[index];
            return ListTile(
              shape: CustomTheme.innerRoundedCorner,
              leading: CircleAvatar(
                backgroundColor: CustomTheme.colorBlueFaint,
                foregroundColor: CustomTheme.colorBlueMain,
                radius: 20,
                child: Text(
                  item.key,
                  style: TextStyle(
                    color: CustomTheme.colorBlueMain,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ),
              hoverColor: CustomTheme.colorBlueFaint,
              title: Text(item.value.key),
              trailing: Text(item.value.value.toStringAsFixed(2)),
              onTap: () {
                print("TEST");
              },
            );
          },
        ),
      ),
    );
  }
}

class Survey extends Container {
  Survey({super.key});
  final List<MapEntry<String, MapEntry<String, String>>> data = [
    const MapEntry(
      "What is your status",
      MapEntry("Personal Details and others", "Completed"),
    ),
    const MapEntry(
      "Life Survey",
      MapEntry("How i feel about my life", "New"),
    ),
    const MapEntry(
      "Title sample",
      MapEntry("This is a sample Survey", "About to end"),
    ),
    const MapEntry(
      "How was the company",
      MapEntry("Evaluate the company nature", "Incomplete"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    ScrollController scrollCntrlr = ScrollController();
    return Scrollbar(
      controller: scrollCntrlr,
      thumbVisibility: true,
      child: Material(
        child: ListView.builder(
          controller: scrollCntrlr,
          padding: const EdgeInsets.only(right: 8),
          itemCount: 4,
          itemBuilder: (context, index) {
            var item = data[index];
            return ListTile(
              shape: CustomTheme.innerRoundedCorner,
              hoverColor: CustomTheme.colorBlueFaint,
              title: Text(item.key),
              subtitle: Text(item.value.key),
              subtitleTextStyle:
                  Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
              titleTextStyle: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontSize: 16),
              trailing: chipStatus(item.value.value),
              onTap: () {
                print("TEST");
              },
            );
          },
        ),
      ),
    );
  }

  Widget? chipStatus(String status) {
    switch (status) {
      case "Completed":
        return Chip(
          backgroundColor: Colors.green[50],
          label: Text('Completed', style: TextStyle(color: Colors.green[700])),
        );
      case "About to end":
        return Chip(
          backgroundColor: Colors.orange[50],
          label: const Text('About to end',
              style: TextStyle(color: Colors.orange)),
        );
      case "Incomplete":
        return Chip(
          backgroundColor: Colors.amber[50],
          label: Text('Incomplete', style: TextStyle(color: Colors.amber[700])),
        );
      case "New":
        return Chip(
          backgroundColor: Colors.blue[50],
          label: Text('New', style: TextStyle(color: Colors.blue[700])),
        );
    }
    return null;
  }
}
