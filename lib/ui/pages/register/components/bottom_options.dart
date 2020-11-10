import 'package:flutter/material.dart';

class BottomOptions extends StatelessWidget {
  final String firstLabel;
  final Function firstButtom;

  final String lastLabel;
  final Function lastButtom;

  const BottomOptions({
    Key key,
    @required this.firstLabel,
    @required this.firstButtom,
    @required this.lastLabel,
    @required this.lastButtom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 65,
                child: RaisedButton(
                  onPressed: firstButtom,
                  child: Text(
                    firstLabel,
                    style: TextStyle(color: Colors.black),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: Colors.white,
                  elevation: 1,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 65,
                child: RaisedButton(
                  onPressed: lastButtom,
                  child: Text(
                    lastLabel,
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: Color.fromRGBO(249, 202, 7, 1),
                  elevation: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
