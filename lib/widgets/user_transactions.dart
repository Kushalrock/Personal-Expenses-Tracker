import 'package:flutter/material.dart';

import './transaction_list.dart';
import './new_transaction.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', name: 'Monthly Rent', amount: 500, date: DateTime.now()),
    Transaction(
        id: 't2', name: 'Maid\'s salary', amount: 100, date: DateTime.now()),
  ];

  void addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        name: txTitle,
        amount: txAmount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(this.addNewTransaction),
        TransactionList(this._userTransactions),
      ],
    );
  }
}
