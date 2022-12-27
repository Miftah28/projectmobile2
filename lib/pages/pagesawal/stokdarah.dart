import 'package:flutter/material.dart';
import 'package:project2mobile/navigation_drawer.dart';

class Stokdarah extends StatelessWidget {
  const Stokdarah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TableRow _tableHeader = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(''),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Whole Blood'),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Package Red Cell'),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Trombocyte'),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Fresh Frozen Plasma'),
      ),
    ]);

    TableRow _tableDataA = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('A',textAlign: TextAlign.center,),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(''),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(''),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(''),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(''),
      ),
    ]);

    TableRow _tableDataB = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('B',textAlign: TextAlign.center,),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(''),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(''),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(''),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(''),
      ),
    ]);

    TableRow _tableDataAB = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('AB',textAlign: TextAlign.center,),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(''),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(''),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(''),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(''),
      ),
    ]);

    TableRow _tableDataO = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('O',textAlign: TextAlign.center,),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(''),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(''),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(''),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(''),
      ),
    ]);

    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Stok Darah'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Table(
          border: TableBorder.all(),
          defaultColumnWidth: const FixedColumnWidth(90.0),
          children: <TableRow>[
            _tableHeader,
            _tableDataA,
            _tableDataB,
            _tableDataAB,
            _tableDataO,
          ],
        ),
      ),
      
    );
  }
}
