import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleInputContoller = TextEditingController();
  final amountInputController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleInputContoller,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountInputController,
            ),
            FlatButton(
                child: Text('Add transaction'),
                textColor: Colors.purple,
                onPressed: () {
                  addTx(
                    titleInputContoller.text,
                    double.parse(amountInputController.text),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
