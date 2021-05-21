import 'package:flutter/material.dart';

import './transaction_list.dart';
import './new_transaction.dart';
import '../model/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 45.89, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New Shirt', amount: 25.39, date: DateTime.now()),
    Transaction(
        id: 't3', title: 'New Jeans', amount: 75.89, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(),
        TransactionList(_userTransactions),
      ],
    );
  }
}