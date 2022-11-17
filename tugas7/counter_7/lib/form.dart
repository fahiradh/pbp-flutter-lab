// ignore: file_names
import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:counter_7/budget.dart';

class BudgetForm extends StatefulWidget {
  const BudgetForm({super.key, required this.title});

  final String title;

  @override
  State<BudgetForm> createState() => _BudgetFormState();
}

class _BudgetFormState extends State<BudgetForm> {
  final _formKey = GlobalKey<FormState>();
  final List<Budget> _budgetList = [];
  String _title = "";
  int _nominal = 0;
  String? type;
  List<String> listType = ["Pemasukan", "Pengeluaran"];

  void addTobudgetList(){
    _budgetList.add( Budget(_title, _nominal, type ?? "Pemasukan", DateTime.now().toString()));
    _formKey.currentState?.reset();
  }

  @override
  Widget build(BuildContext context) {
    bool formIsValid = !(_title == "" || type == null || type == "" || _nominal < 0);
    return Scaffold(
        appBar: AppBar(title: const Text("Form Budget")),
        drawer: AppDrawer(
          myBudgetList: _budgetList,
        ),
        body: Form(
            key: _formKey,
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    margin: const EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Judul",
                                labelText: "Judul Keperluan",
                                // Menambahkan icon agar lebih intuitif
                                icon: const Icon(Icons.title),
                                // Menambahkan circular border agar lebih rapi
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  _title = value!;
                                });
                              },
                              // Menambahkan behavior saat data disimpan
                              onSaved: (String? value) {
                                setState(() {
                                  _title = value!;
                                });
                              },
                              // Validator sebagai validasi form
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Judul keperluan tidak boleh kosong!';
                                }
                                return null;
                              },
                            )),
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Rp",
                                labelText: "Jumlah Budget",
                                // Menambahkan icon agar lebih intuitif
                                icon: const Icon(Icons.money),
                                // Menambahkan circular border agar lebih rapi
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (String? value) {
                                setState(() {
                                  _nominal = int.parse(value!);
                                });
                              },
                              // Menambahkan behavior saat data disimpan
                              onSaved: (String? value) {
                                setState(() {
                                  _nominal = int.parse(value!);
                                });
                              },
                              // Validator sebagai validasi form
                              validator: (String? value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    int.parse(value) == 0) {
                                  return 'Jumlah tidak boleh Rp0 !';
                                }
                                return null;
                              },
                            )),
                        Container(
                          decoration: const BoxDecoration(color: Colors.transparent),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  DropdownButton(
                                    hint: const Text("Pilih Jenis"),
                                    value: type,
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    items: listType.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        type = newValue!;
                                      });
                                    },
                                  ),
                                ]
                              )
                            ),
                           const Spacer(),
                           TextButton(
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(formIsValid ? Colors.blue : Colors.grey),
                            ),
                            onPressed: formIsValid ? addTobudgetList : null , 
                            child: const Text(
                              "Simpan",
                              style: TextStyle(color : Colors.white)
                            ))
                      ],
                    )
                  )
              
              )
            );
  }
}