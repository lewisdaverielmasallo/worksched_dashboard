import 'package:flutter/material.dart';
import 'package:worksched_dashboard/layout_provider.dart';

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 72,
              ),
              SizedBox(
                height: 100,
                child: TopNav(),
              ),
              SizedBox(
                height: 400,
                child: BottomNav(),
              ),
            ],
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
    return Wrap(
      children: LayoutProvider.getBottomNav(context),
    );
  }
}

class LeftNav extends StatelessWidget {
  const LeftNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: LayoutProvider.getLeftNavs(context),
    );
  }
}

class MidNav extends StatelessWidget {
  const MidNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: LayoutProvider.getMidNavs(context),
    );
  }
}

class TopNav extends StatelessWidget {
  const TopNav({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> list = LayoutProvider.getTopNavs(context);
    return ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: list,
    );
  }
}
