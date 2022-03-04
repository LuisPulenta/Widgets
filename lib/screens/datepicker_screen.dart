import 'package:flutter/material.dart';

class DatePickerScreen extends StatefulWidget {
  const DatePickerScreen({Key? key}) : super(key: key);

  @override
  _DatePickerScreenState createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {
  DateTime? myDate = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Datepicker"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.date_range),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Abrir DatePicker'),
                ],
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF7e04cc),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () => openDialog(context),
            ),
            _getDateText()
          ],
        ),
      ),
    );
  }

  Widget _getDateText() {
    if (myDate == null) {
      return Text("Seleccione la fecha");
    } else {
      String formatDate = "${myDate!.day}/${myDate!.month}/${myDate!.year}";
      return Text(formatDate);
    }
  }

  openDialog(BuildContext context) async {
    final temp = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2030),
        initialDatePickerMode: DatePickerMode.year,
        selectableDayPredicate: (DateTime date) {
          return date.isBefore(DateTime.now());
        });

    if (temp == null) {
      return;
    }
    setState(() {
      myDate = temp;
    });
  }
}
