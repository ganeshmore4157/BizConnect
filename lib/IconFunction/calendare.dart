import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderScreen extends StatefulWidget {
  @override
  _CalenderScreenState createState() => _CalenderScreenState();
}
class _CalenderScreenState extends State<CalenderScreen> {
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 4.0,
          child: TableCalendar(
            focusedDay: _focusedDay,
            firstDay: DateTime.utc(2021, 1, 1),
            lastDay: DateTime.utc(2024, 12, 31),
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _focusedDay = focusedDay;
                _selectedDay = selectedDay;
              });
            },
            headerStyle: HeaderStyle(
              titleTextStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              formatButtonTextStyle: TextStyle(color:Colors.white),
              formatButtonDecoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
              selectedDecoration: BoxDecoration(
                color: Theme.of(context).highlightColor,
                shape: BoxShape.circle,
              ),
            ),
            onPageChanged: (focusedDay) {
              if (!isSameDay(_focusedDay, focusedDay) && focusedDay.isBefore(DateTime.now())) {
                setState(() {
                  _focusedDay = focusedDay;
                });
              }
            },
          ),
        ),
      ),
    );
  }
}
