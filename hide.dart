import 'package:flutter/material.dart';
class HidePage extends StatefulWidget {
  @override
  _HidePageState createState() => _HidePageState();
}

class _HidePageState extends State<HidePage> {
  bool hide = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            Opacity(
                opacity: hide ? 0 : 1,
            ),
            MaterialButton(
              onPressed: () {
                setState((){
                  hide = !hide;
                });
              },
              child: Text('${hide ? "Show" : "Hide"}'),
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
