import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;

  NewTransaction(this.addTx);

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
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountInput,
            ),
            FlatButton(
              color: Colors.purple,
              onPressed: () {
                addTx(titleInput.text, double.parse(amountInput.text));
              },
              child: Text('Add transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
