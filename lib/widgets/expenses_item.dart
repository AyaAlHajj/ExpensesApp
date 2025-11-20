import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({required this.expense, super.key});
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(expense.title),

            SizedBox(height: 4),

            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),

                Spacer(flex: 2,),

                Row(
                  children: [
                    Icon(categoryIcon[expense.category]),
                    SizedBox(width: 8,),
                    Text(expense.formattedDate),
                  ],
                ),
              ],
            
            ),
          ],
        ),
      ),
    );
  }
}
