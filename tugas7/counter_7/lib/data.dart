import 'package:counter_7/budget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class BudgetList extends StatefulWidget {
  var myBudgetList;
  // List<Budget> myBudgetList;
  BudgetList({super.key, this.myBudgetList});

  @override
  State<BudgetList> createState() => _BudgetListState();
}

class _BudgetListState extends State<BudgetList> {
  var f = NumberFormat.currency(locale: "id_ID", symbol: "Rp");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Budget List")),
      drawer: AppDrawer(
        theBudget: widget.myBudgetList,
      ),
      body: Column(
        children: [
          if (widget.myBudgetList == null)
            const Center(
              child: Text("Data Kosong"),
            )
          else if (widget.myBudgetList.isEmpty)
            const Center(
              child: Text("Data Kosong"),
            )
          else
            Expanded(
                child: ListView.builder(
                    itemCount: widget.myBudgetList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                            title: Text(widget.myBudgetList[index].judul),
                            subtitle: Text(
                                f.format(widget.myBudgetList[index].nominal)),
                            trailing: Column(
                              children: [
                                Text(widget.myBudgetList[index].date,
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(fontSize: 11)),
                                const Spacer(),
                                Text(widget.myBudgetList[index].jenis,
                                    style: TextStyle(
                                        color:
                                            (widget.myBudgetList[index].jenis ==
                                                    "Pemasukan")
                                                ? Colors.blue
                                                : Colors.red)),
                              ],
                            )),
                      );
                    }))
        ],
      ),
    );
  }
}
