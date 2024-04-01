import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:worksched_dashboard/themes.dart';

class MyProfileMenu extends StatelessWidget {
  const MyProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<PopupMenuButtonState> popUpState = GlobalKey();
    return PopupMenuButton<Function>(
      key: popUpState,
      tooltip: "",
      position: PopupMenuPosition.under,
      offset: const Offset(0.0, 10.0),
      icon: Icon(Icons.person, size: 28, color: CustomTheme.colorBlueMain),
      itemBuilder: (context) => [
        PopupMenuItem(
          // value: () => context.router.pushNamed(ProfileScreen.path),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.person, size: 32, color: CustomTheme.colorBlueMain),
              const SizedBox(width: 10.0),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // context.read<SessionBloc>().employeeName,
                    "Lewis Daveiriel Masallo",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    // context.read<SessionBloc>().position,
                    "Janitor",
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const PopupMenuDivider(),
        PopupMenuItem(
          value: () => showDialog(
            barrierDismissible: true,
            context: context,
            builder: (dialogContext) {
              return const AlertDialog(title: Text("No Functinality!"));
              // return ResetPasswordForm(
              //   title: 'Change Password',
              //   isFromInside: true,
              //   onSubmit: (newPassword, current) async {
              //     return await context
              //         .read<ChangePasswordProvider>()
              //         .changepassword(
              //           current!,
              //           newPassword,
              //           newPassword,
              //         )
              //         .onError((error, stackTrace) => MessageDialog.showError(
              //               context: context,
              //               error: error,
              //             ));
              //   },
              // );
            },
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(25, 21, 101, 192),
                foregroundColor: Colors.blue[800],
                radius: 16,
                child: const Icon(Icons.lock, size: 18),
              ),
              const SizedBox(width: 10.0),
              const Text("Change Password"),
            ],
          ),
        ),
        PopupMenuItem(
          // value: () => context.router.pushNamed(AppSettings.path),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(25, 21, 101, 192),
                foregroundColor: Colors.blue[800],
                radius: 16,
                child: const Icon(Icons.settings, size: 18),
              ),
              const SizedBox(width: 10.0),
              const Text("Settings"),
            ],
          ),
        ),
        PopupMenuItem(
          value: () {
            showDialog(
              barrierDismissible: true,
              context: context,
              builder: (dialogContext) {
                return const AlertDialog(title: Text("No Functinality!"));
              },
            );
            // MessageDialog.confirmationDialog(
            //   context: context,
            //   title: 'Logout Confirmation',
            //   message: "Are you sure you want to log out?",
            // ).then((proceed) {
            //   if (proceed == true) {
            //     locator<NotificationProvider>().reset();
            //     locator<AlertsBloc>().add(ResetAlerts());
            //     locator<SessionBloc>().add(SessionLogout(
            //       isMobile: !kIsWeb,
            //       onDone: () => UIRouter.of(context).goNamed(LoginPage.path),
            //     ));
            //   }
            // });
          },
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(25, 21, 101, 192),
                foregroundColor: Colors.blue[800],
                radius: 16,
                child: Transform.rotate(
                  angle: 180 * math.pi / 180,
                  child: const Icon(Icons.logout, size: 18.0),
                ),
              ),
              const SizedBox(width: 10.0),
              const Text("Log Out"),
            ],
          ),
        ),
      ],
      onSelected: (callback) => callback(),
    );
  }
}
