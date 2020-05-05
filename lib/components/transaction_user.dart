import 'package:despesas/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:despesas/components/transaction_form.dart';
import 'package:despesas/components/transaction_list.dart';
class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser>{

  final _transaction = [
    Transaction(
      id: 't1',
      title: 'Novo tênis de corrida',
      value: 310.76,
      date: DateTime.now()
    ),
    Transaction(
      id: 't2',
      title: 'Conta de luz',
      value: 215.10, 
      date: DateTime.now()
    ),
  ];

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        TransactionList(_transaction),
        TransactionForm()
      ]
    );
  }
}