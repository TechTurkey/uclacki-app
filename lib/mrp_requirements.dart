import 'package:flutter/material.dart';

class MrpRequirements extends StatelessWidget {
  Widget bodyData() =>
      DataTable(
        columns: <DataColumn>[
          DataColumn(
              label: Flexible(child: Text('Event Type', softWrap: true)),
              numeric: false
          ),
          DataColumn(
              label: Flexible(child: Text('# of Events Attended', softWrap: true,)),
              numeric: false
          ),
        ],
          rows: <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Social Events')),
              DataCell(Text('2'))
            ]
          )
        ]
  );

  Widget build(BuildContext context) {
    return new Container(
      child: bodyData()
    );
  }
}