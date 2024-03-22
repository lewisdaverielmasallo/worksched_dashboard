import 'package:flutter/material.dart';
import 'package:worksched_dashboard/layout_provider.dart';
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
                  height: 52,
                ),
                SizedBox(height: 20),
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

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: CustomTheme.cardElevation,
      surfaceTintColor: CustomTheme.background,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Wrap(
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.start,
          runSpacing: 40,
          spacing: 40,
          children: LayoutProvider.getBottomNav(context),
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
        Text(
          'WorkSched',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Aremat',
            color: Colors.blue[800],
            fontSize: 30.0,
          ),
        ),
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
