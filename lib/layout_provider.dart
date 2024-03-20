import 'package:flutter/material.dart';

class LayoutProvider {
  static List<String> bottomNav = [];
  static List<String> leftNav = [];
  static List<String> midNav = [];
  static List<String> topNav = [];

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
