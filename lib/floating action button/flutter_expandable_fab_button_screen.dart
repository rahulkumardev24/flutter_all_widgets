import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';

class FlutterExpandableFabButtonScreen extends StatefulWidget {
  const FlutterExpandableFabButtonScreen({super.key});

  @override
  State<FlutterExpandableFabButtonScreen> createState() =>
      _FlutterExpandableFabButtonScreenState();
}

class _FlutterExpandableFabButtonScreenState
    extends State<FlutterExpandableFabButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expandable Fab"),
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(


          /// Set Duration
          duration: const Duration(seconds: 1),

          /// we can change floating action button type
          /// By default Fan
          type: ExpandableFabType.fan,

          /// we can also position change
          pos: ExpandableFabPos.center,
          fanAngle: 180,

          children: [
            FloatingActionButton.small(
              onPressed: () {},
              child: const Icon(Icons.add_a_photo_rounded),
            ),
            FloatingActionButton.small(
              onPressed: () {},
              child: const Icon(Icons.search_rounded),
            ),
            FloatingActionButton.small(
              onPressed: () {},
              child: const Icon(Icons.chat),
            ),
            FloatingActionButton.small(
              onPressed: () {},
              child: const Icon(Icons.share),
            ),
            FloatingActionButton.small(
              onPressed: () {},
              child: const Icon(Icons.account_balance_wallet),
            ),
          ]),
    );
  }
}

/// IN THIS VIDEO WE IMPLEMENT Expendable Floating Action Button
/// Simple Step
/// add dependency
/// Done
///
