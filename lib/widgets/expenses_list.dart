import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  ExpensesList({required this.expensesList, super.key});

  List<Expense> expensesList;


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expensesList.length,
      itemBuilder: (context, index) => ExpensesItem(expense: expensesList[index])
      );
  }
}