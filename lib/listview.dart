import 'package:flutter/material.dart';
import 'package:list_view/data.dart';

class listview extends StatefulWidget {
  const listview({Key? key}) : super(key: key);

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {
  List<data> namadata = [
    data("Adhanafi Ilyas", "AI", "Pengembang Perangkat Lunak Dan Gim", "1"),
    data("Ahmad Aziz", "AA", "Pengembang Perangkat Lunak Dan Gim", "2"),
    data("Akbar Rizqullah", "AR", "Pengembang Perangkat Lunak Dan Gim", "3"),
    data("Alwan Athallah", "AA", "Pengembang Perangkat Lunak Dan Gim", "4"),
    data("Amri Iqra", "AI", "Pengembang Perangkat Lunak Dan Gim", "5"),
    data("Sejati Adli", "SA", "Pengembang Perangkat Lunak Dan Gim", "6"),
    data("Andika Setya", "AS", "Pengembang Perangkat Lunak Dan Gim", "7"),
    data("Antariksa Kusuma", "AK", "Pengembang Perangkat Lunak Dan Gim", "8"),
    data("Azzra Rienov", "AR", "Pengembang Perangkat Lunak Dan Gim", "9"),
    data("Bayu Septian", "BS", "Pengembang Perangkat Lunak Dan Gim", "10"),
  ];

  Widget avatar(int index) {
    return CircleAvatar(
      radius: 28,
      backgroundColor: Colors.purple,
      child: Text(
        namadata[index].kodeName.toString(),
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget textData(int index) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.only(left: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            namadata[index].name.toString(),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Container(
            margin: EdgeInsets.only(top: 2),
            child: Text('Jurusan = ' + namadata[index].jurusan.toString()),
          ),
          Container(
            margin: EdgeInsets.only(top: 2),
            child: Text('Nomor Absen = ' + namadata[index].Absen.toString()),
          ),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: namadata.length,
        itemBuilder: (buildContext, index) {
          return GestureDetector(
            onTap: () {
              //snackbar
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("${namadata[index].name}"),
                duration: Duration(seconds: 2),
              ));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  avatar(index),
                  textData(index),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
