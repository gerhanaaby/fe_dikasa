import 'package:fe_dikasa/constants/colors.dart';
import 'package:fe_dikasa/constants/text_styles.dart';
import 'package:flutter/material.dart';

class SlideAbleList extends StatefulWidget {
  final List<Map<String, Object>> listOrder;

  const SlideAbleList({Key? key, required this.listOrder}) : super(key: key);

  @override
  State<SlideAbleList> createState() {
    return _SlideAbleListState();
  }
}

class _SlideAbleListState extends State<SlideAbleList> {
  List<int> items = List<int>.generate(100, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: widget.listOrder.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: textFormColorGrey,
                  width: 1.0,
                ),
              ),
            ),
            child: Dismissible(
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
                leading: Text('${widget.listOrder[index]['qty']}'),

                title: SizedBox(
                  width: 138,
                  height: 42,
                  child: Text(
                    '${widget.listOrder[index]['name']}', style: poppinsDarkGreyBold(fontSize: 16),
                  ),
                ),
                trailing: Text(
                  '${widget.listOrder[index]['price']}',
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
