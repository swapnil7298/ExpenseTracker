import 'package:flutter/material.dart';
import '../helpers/database_helper.dart';
import '../models/expense.dart';
import '../widgets/expense_list.dart';
import '../widgets/monthly_summary.dart';
import 'add_expense_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Expense> _expenses = [];
  double _monthlyTotal = 0.0;

  @override
  void initState() {
    super.initState();
    _fetchExpenses();
  }

  // Fetches expenses from the database and updates the state.
  Future<void> _fetchExpenses() async {
    final dataList = await DatabaseHelper.getData('expenses');
    setState(() {
      _expenses = dataList.map((item) => Expense.fromMap(item)).toList();
      _calculateMonthlyTotal();
    });
  }

  // Calculates the total expenses for the current month.
  void _calculateMonthlyTotal() {
    final now = DateTime.now();
    double total = 0.0;
    for (var expense in _expenses) {
      if (expense.date.month == now.month && expense.date.year == now.year) {
        total += expense.amount;
      }
    }
    setState(() {
      _monthlyTotal = total;
    });
  }

  // Navigates to the AddExpenseScreen and refreshes the expenses list on return.
  void _navigateToAddExpense() async {
    await Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => const AddExpenseScreen()),
    );
    _fetchExpenses();
  }

  // Deletes an expense from the database and updates the UI.
  void _deleteExpense(String id) async {
    await DatabaseHelper.delete('expenses', id);
    _fetchExpenses();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _navigateToAddExpense,
          ),
        ],
      ),
      body: Column(
        children: [
          MonthlySummary(monthlyTotal: _monthlyTotal),
          Expanded(
            child: ExpenseList(
              expenses: _expenses,
              onDelete: _deleteExpense,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: _navigateToAddExpense,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
