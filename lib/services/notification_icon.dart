import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final pvdNotif = [const Text("Hello"), const Text("No Notification")];
    const unreadCount = 2;

    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    final notifIcon =
        Icon(Icons.notifications, color: colorScheme.primary, size: 28);

    return PopupMenuButton(
      position: PopupMenuPosition.under,
      offset: const Offset(0.0, 10.0),
      tooltip: 'Notifications',
      constraints: const BoxConstraints(maxWidth: 300, maxHeight: 600),
      icon: unreadCount == 0
          ? notifIcon
          : Badge.count(count: unreadCount, child: notifIcon),
      itemBuilder: (context) {
        List<Widget> notifs = List.from(pvdNotif);
        if (notifs.length > 16) notifs.removeRange(16, notifs.length);
        return [
          if (notifs.isNotEmpty)
            PopupMenuItem(
              enabled: false,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Notifications',
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  PopupMenuButton(
                    position: PopupMenuPosition.under,
                    child: const Icon(
                      Icons.more_horiz,
                      color: Colors.black87,
                    ),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                          child: Text(
                            'Mark all as read',
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 14,
                            ),
                          ),
                        ),
                        PopupMenuItem(
                          child: Text(
                            'Open notifications',
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 14,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            Future.microtask(
                              () => showDialog(
                                context: context,
                                builder: (context) {
                                  return const AlertDialog(
                                      title: Text("No Functinality!"));
                                },
                              ),
                            );
                          },
                        ),
                      ];
                    },
                  ),
                ],
              ),
            ),
          if (notifs.isNotEmpty)
            ...notifs.map((e) {
              late void Function(BuildContext) showForm;
              return PopupMenuItem(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
                child: e,
                // Selector<NotificationProvider, Key?>(
                //   selector: (p0, p1) => p1.notifListRefresh,
                //   builder: (context, value, child) {
                //     final child = pvdNotif.notificationFactory
                //         .render(context, e.module, e);
                //     showForm = child.open;
                //     return child;
                //   },
                // ),
                onTap: () {
                  // pvdNotif.markAsRead([e]);
                  // showForm(context);
                },
              );
            }),
          if (notifs.isNotEmpty && notifs.length > 16)
            PopupMenuItem(
              height: 26,
              child: Center(
                child: Text(
                  'Show more',
                  style: TextStyle(
                    color: Colors.blue[800]!,
                    fontSize: 14,
                  ),
                ),
              ),
              onTap: () {
                Future.microtask(
                  () => showDialog(
                    context: context,
                    builder: (context) {
                      // return NotificationTab(pvdNotif: pvdNotif);
                      return const AlertDialog(title: Text("No Functinality!"));
                    },
                  ),
                );
              },
            ),
          if (notifs.isEmpty)
            const PopupMenuItem(
              enabled: false,
              child: Center(child: Text('No notification.')),
            )
        ];
      },
    );
  }
}
