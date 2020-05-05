import 'package:despesas/components/transaction_form.dart';
import 'package:despesas/components/transaction_list.dart';
import 'package:despesas/components/transaction_user.dart';
import 'package:despesas/models/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {

  // String title;
  // String value;

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            // width: double.infinity, - não precisa por conta do CrossAxisAlignment.stretch
            child: Card(
                color: Colors.blue,
                child: Text('Grafico'),
                elevation: 5
            )
          ),
          TransactionUser()
        ],
      ),
    );
  }
}
