import 'package:flutter/material.dart';
import 'package:worksched_dashboard/extensions.dart';
import 'package:worksched_dashboard/themes.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
            foregroundColor: Colors.grey[900],
            backgroundColor: Colors.white,
            alignment: Alignment.center,
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
          ),
          onPressed: () {},
          child: SizedBox(
            height: 100,
            width: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(
                    'assets/bottomnav/${title.toLowerCase().replaceAll(" ", "_")}32x32.png',
                  ),
                  height: 80,
                  width: 80,
                ),
                const SizedBox(height: 4),
                Text(title, overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ).addNeumorphism(),
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
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            foregroundColor: Colors.grey[900],
            backgroundColor: Colors.white,
            alignment: Alignment.center,
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
          ),
          onPressed: () {},
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(24.0),
              ),
            ),
            clipBehavior: Clip.antiAlias,
            child: SizedBox(
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
        ).addNeumorphism(),
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
              const SizedBox(height: 6),
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
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: SizedBox(
                      width: 50,
                      child: Text(
                        "IN",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: CustomTheme.colorBlueMain, height: 2),
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: SizedBox(
                      width: 50,
                      child: Text(
                        "OUT",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: CustomTheme.colorBlueMain, height: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
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
        controller: controller,
        children: [
          for (String key in announcements.keys)
            Container(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              margin: const EdgeInsets.fromLTRB(0, 0, 8, 8),
              decoration: const BoxDecoration(
                color: Color.fromARGB(10, 21, 101, 192),
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              child: Column(
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
    return Expanded(
      child: Scrollbar(
        controller: scrollCntrlr,
        thumbVisibility: true,
        child: ListView.builder(
          controller: scrollCntrlr,
          itemCount: data.length,
          itemBuilder: (context, index) {
            var item = data[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color.fromARGB(25, 21, 101, 192),
                foregroundColor: Colors.blue[800],
                radius: 20,
                child: Text(
                  item.key,
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ),
              title: Text(item.value.key),
              trailing: Text(item.value.value.toStringAsFixed(2)),
              onTap: () {},
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
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 22.0,
              lineWidth: 6.0,
              percent:
                  0.25, //(state.completed.toDouble() / state.list.length.toDouble()),
              center: const Text(
                "25%", // "${((state.completed.toDouble() / state.list.length.toDouble()) * 100).toStringAsFixed(2)}%",
                style: TextStyle(fontSize: 10),
              ),
              animation: true,
              progressColor: Colors.blue[800],
              backgroundColor: const Color.fromARGB(25, 21, 101, 192),
            ),
            const SizedBox(width: 12),
            const FittedBox(
              child: Text(
                "1 of 4 survey completed", //'${state.completed} of ${state.list.length} survey completed.',
                // style: Theme.of(context).textTheme.caption,
              ),
            ),
          ],
        ),
        Expanded(
          child: Scrollbar(
            controller: scrollCntrlr,
            thumbVisibility: true,
            child: ListView.builder(
              controller: scrollCntrlr,
              itemCount: 4, //state.list.length,
              itemBuilder: (context, index) {
                var item = data[index];
                return ListTile(
                  title: Text(item.key),
                  subtitle: Text(item.value.key),
                  trailing: chipStatus(item.value.value),
                  onTap: () {},
                );
              },
            ),
          ),
        ),
      ],
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
