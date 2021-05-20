import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Flutter List'),
          backgroundColor: Colors.blue,
        ),
        body: DynamicList(),
      )
    );
  }
}

class DemoList extends StatefulWidget {
  @override
  _DemoListState createState() => _DemoListState();
}

class _DemoListState extends State<DemoList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          subtitle: Text('A place for live'),
          trailing: Icon(Icons.keyboard_arrow_right),
          selected: true,
          dense: true,
          onTap: (){

          },
        ),
        ListTile(
          leading: Icon(Icons.contacts),
          title: Text('Contacts'),
          subtitle: Text('A list of phone numbers'),
          trailing: Icon(Icons.keyboard_arrow_right),
          selected: true,
          dense: true,
          onTap: (){

          },
        ),
      ],
    );
  }
}

List<String> items = ['One','two','Three'];
class ListDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index){
          return new Text(items[index]);
        }
    );
  }
}




class DynamicList extends StatefulWidget {
  @override
  _DynamicListState createState() => _DynamicListState();
}

class _DynamicListState extends State<DynamicList> {
  List<String> item = [];
  final TextEditingController eCtrl= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        TextField(
          controller: eCtrl,
          decoration: new InputDecoration.collapsed(hintText: "Write Something"),
          onSubmitted: (text){
            item.add(text);
            eCtrl.clear();
            setState(() {
            });
          },

        ),

         Center(
             child: Text('........Header........')
         ),

        Expanded(
            child: ListView.builder(
            itemCount: item.length,
            itemBuilder: (BuildContext ctx, int index){
              return Text(item[index]);
            }
        )
        ),

      ],
    );
  }
}

