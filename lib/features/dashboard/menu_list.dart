import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  final List<String>? images;
  final List<String>? title;
  final List<String>? phones;

  const MenuList({Key? key, this.title, this.images, this.phones})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images?.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 10.0,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Image.network(
                  'https://d-pt.ppstatic.pl/k/r/1/59/d4/5cb1dbc30ec6d_p.jpg?1555262447',
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [Text("hallo"), Text("hallo")],
                  )),
            ],
          ),
        );
      },
    );
  }
}