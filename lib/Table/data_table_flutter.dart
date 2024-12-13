import 'package:flutter/material.dart';

class DataTableFlutter extends StatefulWidget {
  const DataTableFlutter({super.key});

  @override
  State<DataTableFlutter> createState() => _DataTableFlutterState();
}

class _DataTableFlutterState extends State<DataTableFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Table"),
      ),

      /// table create
      body: Center(
        child: Column(
          children: [
            const Text(
              "Student Data",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DataTable(

                  /// here we apply some properties
                  dividerThickness: 3,
                  headingTextStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                  dataTextStyle:
                      const TextStyle(fontSize: 16, color: Colors.blue),
                  dataRowMaxHeight: 70,
                  sortAscending: true,
                  showBottomBorder: true,
                  border: TableBorder.all(),
                  columns: const [
                    /// Columns
                    DataColumn(
                      label: Text("Name"),
                    ),
                    DataColumn(
                      label: Text("Roll"),
                    ),
                    DataColumn(
                      label: Text("Age"),
                    ),
                    DataColumn(
                      label: Text("Fee"),
                    ),
                  ],

                  /// Rows
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text("Rahul Kumar")),
                      DataCell(Text("100")),
                      DataCell(Text("22")),
                      DataCell(Text("80000")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Satish Kumar")),
                      DataCell(Text("101")),
                      DataCell(Text("25")),
                      DataCell(Text("75000")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Pankaj Kumar")),
                      DataCell(Text("105")),
                      DataCell(Text("18")),
                      DataCell(Text("90000")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ram")),
                      DataCell(Text("115")),
                      DataCell(Text("73")),
                      DataCell(Text("100000")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Vikas")),
                      DataCell(Text("109")),
                      DataCell(Text("27")),
                      DataCell(Text("65000")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ria Kumari")),
                      DataCell(Text("125")),
                      DataCell(Text("21")),
                      DataCell(Text("50000")),
                    ]),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

/// THIS VIDEO WE CRATE TABLE
/// DATA STORE IN ROW OR COLUMN
/// SIMPLE STEP
/// DONE
