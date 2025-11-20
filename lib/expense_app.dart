import 'package:expense_tracker/widgets/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpensesApp extends StatefulWidget {
  const ExpensesApp({super.key});

  @override
  State<ExpensesApp> createState() => _ExpensesAppState();
}

class _ExpensesAppState extends State<ExpensesApp> {
  final List<Expense> _registeredExpensesList = [
    Expense(
      amount: 5,
      date: DateTime.now(),
      title: 'Burger',
      category: Category.food,
    ),

    Expense(
      title: 'Dev',
      amount: 400,
      date: DateTime.now(),
      category: Category.work,
    ),

    Expense(
      title: 'Istanbul',
      amount: 700,
      date: DateTime.now(),
      category: Category.travel,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ExpensesList(expensesList: _registeredExpensesList);
  }
}
