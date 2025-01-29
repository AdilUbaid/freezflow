import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class TimelineView extends StatelessWidget {
  final DateTime selectedDate;

  final void Function(DateTime) onSelectedDateChanged;

  const TimelineView(
      {super.key,
      required this.selectedDate,
      required this.onSelectedDateChanged});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: EasyDateTimeLine(
        initialDate: selectedDate,
        onDateChange: onSelectedDateChanged,
        headerProps: const EasyHeaderProps(),
        dayProps: EasyDayProps(
          dayStructure: DayStructure.dayStrDayNum,
          activeDayStyle: DayStyle(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [colorScheme.primary, colorScheme.secondary],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter, // LinearGradient
              ), // BoxDecoration
            ), // DayStyle
          ), // EasyDayProps ), // EasyDateTimeLine),
        ),
      ),
    );
  }
}
