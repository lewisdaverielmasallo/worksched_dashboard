import 'package:flutter/material.dart';
import 'package:worksched_dashboard/dashboard.dart';
import 'package:worksched_dashboard/themes.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Worksched',
      theme: CustomTheme.lightThemeData(context),
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // ignore: non_constant_identifier_names
  late bool is_static;
  @override
  void initState() {
    is_static = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: is_static ? null : AppBar(),
      body: is_static ? bodyImage() : const DashboardView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(is_static ? Icons.dashboard : Icons.image),
        onPressed: () => setState(() {
          is_static = !is_static;
        }),
      ),
    );
  }

  Widget bodyImage() {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/res/dashboard.png'),
          ),
        ],
      ),
    );
  }
}
