import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spendings/models/expense.dart';
import 'package:spendings/widgets/expense_list/exepnse_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState(){
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {

    final List <Expense> _registeredExpenses=[
      Expense(title:'Flutter Course',amount: 50.0,date: DateTime.now(), category: Category.work),
       Expense(title:'ice cream',amount: 60.0,date: DateTime.now(), category: Category.work),
    ];

  @override
  Widget build(BuildContext context) {
    
   return Scaffold(body: Column(
    children: [
      const Text(" the chart columns"),
      Expanded(child: ExpenseList(expenses: _registeredExpenses),
        )
       ],
      ),
    ); 
  }
}