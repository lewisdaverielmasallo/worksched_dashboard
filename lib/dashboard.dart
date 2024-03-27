import 'package:flutter/material.dart';
import 'package:worksched_dashboard/layout_provider.dart';
import 'package:worksched_dashboard/services/alerts_indicator.dart';
import 'package:worksched_dashboard/services/my_profile_menu.dart';
import 'package:worksched_dashboard/services/notification_icon.dart';
import 'package:worksched_dashboard/themes.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(
        flex: 4,
        child: LeftNav(),
      ),
      Expanded(
        flex: 16,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 72),
            child: Column(
              children: [
                SizedBox(
                  height: 72,
                  child: AppTopBar(),
                ),
                SizedBox(
                  height: 100,
                  child: TopNav(),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 378,
                  child: MidNav(),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 335,
                  child: BottomNav(),
                ),
                SizedBox(
                  height: 54,
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}

class AppTopBar extends StatelessWidget {
  const AppTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(24, 16, 16, 16),
      width: 1280,
      child: const Row(
        children: [
          Spacer(),
          AlertsIndicator(),
          SizedBox(width: 6),
          NotificationIcon(),
          SizedBox(width: 12),
          MyProfileMenu(),
        ],
      ),
    );
  }
}

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    return Card(
      elevation: CustomTheme.cardElevation,
      color: CustomTheme.background,
      surfaceTintColor: CustomTheme.background,
      shape: CustomTheme.roundedCorner,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Scrollbar(
          thumbVisibility: true,
          scrollbarOrientation: ScrollbarOrientation.top,
          controller: controller,
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(CustomTheme.corner),
            ),
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: SingleChildScrollView(
              controller: controller,
              scrollDirection: Axis.horizontal,
              child: Wrap(
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.start,
                direction: Axis.vertical,
                runSpacing: 40,
                spacing: 40,
                children: LayoutProvider.getBottomNav(context),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LeftNav extends StatelessWidget {
  const LeftNav({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(left: 8),
      children: [
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Work',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Aremat',
                color: Colors.blue[800],
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Sched',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Aremat',
                color: Colors.blue[800],
                fontSize: 30.0,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        ...LayoutProvider.getLeftNavs(context),
      ],
    );
  }
}

class MidNav extends StatelessWidget {
  const MidNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.center,
      alignment: WrapAlignment.center,
      direction: Axis.vertical,
      runSpacing: 40,
      spacing: 20,
      children: LayoutProvider.getMidNavs(context),
    );
  }
}

class TopNav extends StatelessWidget {
  const TopNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.center,
      alignment: WrapAlignment.center,
      direction: Axis.vertical,
      runSpacing: 40,
      spacing: 20,
      children: LayoutProvider.getTopNavs(context),
    );
  }
}
