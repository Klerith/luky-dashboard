import 'package:flutter/material.dart';

class DashboardLayout extends StatelessWidget {
  final Widget child;
  const DashboardLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Dashboard',
              style: TextStyle(fontSize: 50),
            ),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
