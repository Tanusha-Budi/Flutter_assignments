import 'package:flutter/material.dart';
import 'package:project2/widgets/transaction_list.dart';
import './new_transaction.dart';

import '../models/transactions.dart';

class UserTransaction extends StatefulWidget {
  @override
  State<UserTransaction> createState() => UserTransactionState();
}

class UserTransactionState extends State<UserTransaction> {
  final List<Transactions> userTransactions = [
    Transactions(id: 'ts1', title: 'Jeans', amount: 1500, date: DateTime.now()),
    Transactions(
        id: 'ts2', title: 'New mobile', amount: 24897, date: DateTime.now())
  ];

  void addNewTransaction(String txtitle, double txamount) {
    final newTx = Transactions(
        id: DateTime.now().toString(),
        title: txtitle,
        amount: txamount,
        date: DateTime.now());

    setState(() {
      userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        NewTransaction(addNewTransaction),
        TransactionList(userTransactions)
      ],
    ));
  }
}
