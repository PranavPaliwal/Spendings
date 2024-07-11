import 'package:flutter/material.dart';
import 'package:spendings/models/expense.dart';
import 'package:spendings/widgets/expense_list/expense_item.dart';
class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key,required this.expenses });

  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:expenses.length ,itemBuilder: (ctx,index) => ExpenseItem(expenses[index]));
  }
}