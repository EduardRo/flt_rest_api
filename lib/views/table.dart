import 'package:flutter/material.dart';

class MyTableWidget extends StatelessWidget {
  const MyTableWidget({super.key});
  final int id = 1;
  final String title = 'Povestea vorbei';
  final String body = 'this is the body of the story';

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: <DataColumn>[
        DataColumn(
            label: Text(id.toString(),
                style: const TextStyle(
                    color: Colors.white, backgroundColor: Colors.black))),
        DataColumn(
            label: Text(title,
                style: const TextStyle(
                    color: Colors.white, backgroundColor: Colors.black))),
        DataColumn(
            label: Text(body,
                style: const TextStyle(
                    color: Colors.white, backgroundColor: Colors.black))),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text(
              'bla1',
              style:
                  TextStyle(color: Colors.white, backgroundColor: Colors.black),
            )),
            DataCell(Text(
              'bla2',
              style:
                  TextStyle(color: Colors.white, backgroundColor: Colors.black),
            )),
            DataCell(
              Text(
                'bla3',
                style: TextStyle(
                    color: Colors.white, backgroundColor: Colors.black),
              ),
            ),
          ],
        )
      ],
    );
  }
}
