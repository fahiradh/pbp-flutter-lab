import 'package:counter_7/budget.dart';
import 'package:counter_7/data.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/main.dart';

class AppDrawer extends StatefulWidget {
  late List<Budget> myBudgetList;
  AppDrawer({super.key, required this.myBudgetList});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer>{
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: Column(
        children: [
          // Menambahkan clickable menu
          ListTile(
            title: const Text('Counter'),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage(title: "Program Counter",)),
              );
            },
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const BudgetForm(title: "Form Budget",)),
              );
            },
          ),
           ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => BudgetList( myBudgetList: widget.myBudgetList,)),
              );
            },
          ),
        ],
      ),
    );
  }
}