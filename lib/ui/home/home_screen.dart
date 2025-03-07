import 'package:flutter/material.dart';
import 'package:freezflow/ui/home/color.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd MMM yyyy').format(DateTime.now());

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$formattedDate today',
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryText),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 40,
                child: TextField(
                  textAlignVertical: const TextAlignVertical(y: 1),
                  cursorColor: AppColors.primaryText,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: AppColors.primaryIconHighlight,
                      size: 27,
                    ),
                    hintText: 'Search',
                    hintStyle: const TextStyle(color: AppColors.primaryText),
                    filled: true,
                    fillColor: AppColors.secondaryAccent,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var day in ['S', 'M', 'T', 'W', 'T', 'F', 'S'])
                    Column(
                      children: [
                        Text(day,
                            style: const TextStyle(
                                fontSize: 18, color: AppColors.primaryText)),
                        const SizedBox(height: 8),
                        const Text('07',
                            style: TextStyle(
                                fontSize: 16, color: AppColors.primaryText)),
                      ],
                    ),
                ],
              ),
              const Divider(),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const TaskDateSection(date: '8 Jul Today'),
                    const TaskDateSection(date: '9 Jul Tomorrow'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.background,
        fixedColor: AppColors.background,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class TaskDateSection extends StatelessWidget {
  final String date;

  const TaskDateSection({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          date,
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryAccent),
        ),
        const SizedBox(height: 16),
        const TaskRow(
          time: '9:30 AM',
          duration: '45 min',
          title: 'Task Heading',
          description: 'Task description line 1\nTask description line 2',
        ),
        const TaskRow(
          time: '9:30 AM',
          duration: '45 min',
          title: 'Task Heading',
          description: 'Task description line 1\nTask description line 2',
        ),
        const TaskRow(
          time: '9:30 AM',
          duration: '45 min',
          title: 'Task Heading',
          description: 'Task description line 1\nTask description line 2',
        ),
        const TaskRow(
          time: '9:30 AM',
          duration: '45 min',
          title: 'Task Heading',
          description: 'Task description line 1\nTask description line 2',
        ),
      ],
    );
  }
}

class TaskRow extends StatelessWidget {
  final String time;
  final String duration;
  final String title;
  final String description;

  const TaskRow({
    super.key,
    required this.time,
    required this.duration,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(time,
                  style: const TextStyle(
                      fontSize: 16, color: AppColors.secondaryText)),
              const SizedBox(height: 4),
              Text(duration,
                  style: const TextStyle(
                      fontSize: 14, color: AppColors.primaryText)),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.secondaryAccent,
              ),
              child: Padding(  
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryText)),
                        const SizedBox(height: 4),
                        Text(description,
                            style: const TextStyle(
                                fontSize: 14, color: AppColors.primaryText)),
                      ],
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.more_vert,
                        color: AppColors.primaryText,
                      ),
                      onPressed: () {
                        // Handle more button pressed
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
