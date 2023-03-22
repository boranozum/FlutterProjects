import 'package:flutter/material.dart';

class TransactionInput extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  TransactionInput({required this.addTx});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            controller: amountController,
          ),
          ElevatedButton(
            onPressed: () {
              addTx(
                titleController.text,
                double.parse(amountController.text),
              );
            },
            child: Text('Add Transaction'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple)),
          )
        ],
      ),
    );
  }
}
