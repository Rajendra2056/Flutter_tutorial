import 'package:flutter/material.dart';
import 'package:flutter_practise/widgetTutorial/textWidget.dart';

class WidgetList extends StatefulWidget {
  const WidgetList({super.key});

  @override
  WidgetListState createState() => WidgetListState();
}

class WidgetListState extends State<WidgetList> {
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 74, 125, 212),
        title: const Text("Flutter Tutorial"),
      ),
      body: Center(
          child: ListView(
        children: [
          card("Widgets", context),
          card("Layouts", context),
          card("Lists", context),
          card("App bar", context),
          card("Navigation", context),
          card("Async", context),
          card("Animation", context),
          TextField(
            controller: _controller,
            decoration: const InputDecoration(hintText: "enter something"),
          ),
        ],
      )),
    );
  }
}

card(String boxname, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WidgetTutorial(),
          ));
    },
    child: Container(
        margin: const EdgeInsets.only(top: 10),
        //color: Colors.green,
        decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
            width: 0.5,
          )),
          borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
        ),
        height: 80,
        child: Center(
            child: Row(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 10),
                child: Icon(
                  Icons.local_pizza_outlined,
                  size: 45,
                )),
            SizedBox(
              width: 50,
            ),
            Expanded(
              child: SizedBox(
                width: 150,
                child: Text(
                  boxname,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 0, 0, 0.8)),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(400, 0, 0, 0),
                child: Icon(Icons.arrow_drop_down)),
          ],
        ))),
  );
}
