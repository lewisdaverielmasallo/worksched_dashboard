import 'package:flutter/material.dart';
import 'package:worksched_dashboard/provider.dart';

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

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: StaticData.getBottomNav(context),
    );
  }
}
