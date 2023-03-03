import 'package:flutter/material.dart';

class SlideAbleList extends StatefulWidget {
  final List<String>? images;

  const SlideAbleList({Key? key, this.images}) : super(key: key);

  @override
  State<SlideAbleList> createState() => _SlideAbleListState();
}

class _SlideAbleListState extends State<SlideAbleList> {
  List<int> items = List<int>.generate(100, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: widget.images?.length,
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          direction: DismissDirection.startToEnd,
          resizeDuration: Duration(milliseconds: 200),
          key: ValueKey<int>(items[index]),
          onDismissed: (direction) {
            // TODO: implement your delete function and check direction if needed
            //_deleteMessage(index);
            setState(() {
              items.removeAt(index);
            });
          },
          background: Container(
            padding: EdgeInsets.only(left: 28.0),
            alignment: AlignmentDirectional.centerStart,
            color: Colors.red,
            child: Icon(
              Icons.delete_forever,
              color: Colors.white,
            ),
          ),
          // secondaryBackground: ...,
          child: ListTile(
            leading: Text("1"),
            title: Text(
              'Item ${items[index]}',
            ),
            subtitle: Text("3"),
            trailing: Icon(Icons.tag_faces),
          ),
        );
      },
    );
  }
}
