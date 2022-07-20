import '../models/transactions.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {

  final List<Transaction> _userTransactions = [
      Transaction(
        id: 't1',
        title: 'New Air Forces',
        amount: 168.69,
        date: DateTime.now(),
      ),
      Transaction(
        id: 't2',
        title: 'New NFT',
        amount: 157.57,
        date: DateTime.now(),
      ),
    ];

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: _userTransactions.map((tx) {
        return Card(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 3)),
              child: Text(
                '\$${tx.amount}',
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tx.title,
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  DateFormat.yMMMEd().format(tx.date),
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        ));
      }).toList(),
    );
  }
}
