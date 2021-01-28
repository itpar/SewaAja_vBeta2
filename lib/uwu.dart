import 'package:flutter/material.dart';

class Uwu extends StatefulWidget {
  const Uwu({Key key}) : super(key: key);

  @override
  _UwuState createState() => _UwuState();
}

class _UwuState extends State<Uwu> {  bool _ready = false;

//  List<dynamic> _lstDataSiswa = [];
//  String _statusText = "";
TextEditingController _txtSearch = TextEditingController();
bool _flagAllowSearch = true;


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("widget.title"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 8.0),
        child: Container(
            height: 50,
            child: TextField(
              controller: _txtSearch,
              onChanged: (filterText) {
                //. supaya efektif pencarianya, pakai timeout bukan per karakter
                if (_flagAllowSearch == true) {
                  _flagAllowSearch = false;

                  Future.delayed(Duration(milliseconds: 500), () {
                    _flagAllowSearch = true;
                    setState(() {
                      _ready = false;
                    });
                    //                        _loadData(_txtSearch.text).then((d) {
                    //                          setState(() {
                    //                            _ready = true;
                    //                          });
                    //                        });
                  });
                }
                //                      _scanner();
              },
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                prefixIcon: Icon(Icons.search),
                prefixStyle: TextStyle(color: Colors.blue),
                hintText: "Cari Kendaraan ..",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.red.withOpacity(0.2),
                      width: 32.0),
                  borderRadius:
                  BorderRadius.all(Radius.circular(10.0)),
                ),
              ),

              //focusedBorder: OutlineInputBorder(
              //  borderSide: BorderSide(
              //    color: Colors.red.withOpacity(0.2), width: 32.0),
              //borderRadius: BorderRadius.circular(0.0)
              // ),
            )),
      ),
    );
  }
}
