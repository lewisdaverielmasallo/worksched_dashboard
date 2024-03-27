import 'package:flutter/material.dart';
import 'package:worksched_dashboard/themes.dart';

class AlertsIndicator extends StatelessWidget {
  const AlertsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final alertsIcon =
        Icon(Icons.feedback, color: CustomTheme.colorBlueMain, size: 28);
    return
        // BlocConsumer<AlertsBloc, AlertsState>(
        // listener: (context, state) async {
        //   if (state.states == AlertsStates.alertsUpdated &&
        //       state.onScreen == null) {
        //     context.read<AlertsBloc>().add(ConsumeNextUrgent());
        //   } else if (state.states == AlertsStates.alertUrgent) {
        //     await state.onScreen!.showAlert(context);
        //     // ignore: use_build_context_synchronously
        //     context.read<AlertsBloc>().add(ConsumeNextUrgent());
        //   }
        // },
        // buildWhen: (_, state) =>
        //     state.states == AlertsStates.alertsUpdated ||
        //     state.states == AlertsStates.alertRemoved,
        // builder: (context, state) {
        //   final alertsCount = state.alerts.length;

        //   final ColorScheme colorScheme = Theme.of(context).colorScheme;

        Visibility(
      visible: true, //state.alerts.isNotEmpty,
      child: PopupMenuButton<Function(BuildContext)>(
        position: PopupMenuPosition.under,
        offset: const Offset(0.0, 10.0),
        tooltip: 'Alerts',
        onSelected: (callback) => callback(context),
        icon: Badge.count(count: 2, child: alertsIcon),
        itemBuilder: (context) =>
            [const Text("Test"), const Text("No Functionality")]
                .map((e) => PopupMenuItem(
                      value: (context) {
                        print("Test");
                      },
                      child: ListTile(
                        title: e,
                        subtitle: e,
                      ),
                    ))
                .toList(),
      ),
      //   );
      // },
    );
    // ignore: dead_code
    // return Responsive(
    //   mobile: (context) => mobileView(),
    //   tablet: (context) => tabletDesktopView(),
    //   desktop: (context) => tabletDesktopView(),
    // );
  }
}
