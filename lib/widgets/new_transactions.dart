import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  void submitData() {
    final enteredTitle = titleInput.text;
    final enteredAmount = double.parse(amountInput.text);
    //dummy validation
    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
    addTx(
      titleInput.text,
      double.parse(amountInput.text),
    );
  }

  final TextEditingController amountInput = TextEditingController();
  final TextEditingController titleInput = TextEditingController();

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
              controller: titleInput,
              onSubmitted: (_) => submitData,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountInput,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData,
            ),
            FlatButton(
              color: Colors.purple,
              onPressed: submitData,
              child: Text('Add transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
