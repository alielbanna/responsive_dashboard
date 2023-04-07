import 'package:flutter/material.dart';
import 'package:responsive_dashboard/responsive/desktop_body.dart';
import 'package:responsive_dashboard/responsive/mobile_body.dart';
import 'package:responsive_dashboard/responsive/responsive_layout.dart';
import 'package:responsive_dashboard/responsive/tablet_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: ResponsiveLayout(
        mobileBody: const MobileScaffold(),
        tabletBody: const TabletScaffold(),
        desktopBody: const DesktopScaffold(),
      ),
    );
  }
}
