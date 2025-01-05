import 'package:flutter/material.dart';
import 'package:freezflow/ui/components/timeline_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FreezFlow'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TimelineView()
          ],
        ),
      ),
    );
  }
}