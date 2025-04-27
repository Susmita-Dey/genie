import 'package:flutter/material.dart';
import 'package:genie/widgets/side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // side navbar
          Column(children: [SideBar()]),
          // search section
          // footer
        ],
      ),
    );
  }
}
