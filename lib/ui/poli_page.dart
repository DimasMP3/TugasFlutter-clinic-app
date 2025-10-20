import 'package:flutter/material.dart';   
import '../model/poli.dart';
import 'poli_item.dart';
import 'poli_form.dart';

class PoliPage extends StatefulWidget {   
  const PoliPage({super.key});   
   
  @override   
  State<PoliPage> createState() => _PoliPageState();   
}   
   
class _PoliPageState extends State<PoliPage> {
  @override   
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data Poli'),
      actions: [
        GestureDetector(
          child: const Icon(Icons.add),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PoliForm(),
              ),
            );
          },
        )
      ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        children: [
          PoliItem(
            poli: Poli(namaPoli: 'Poli Anak'),
          ),
          PoliItem(   
            poli: Poli(namaPoli: 'Poli Gigi'),   
          ),   
          PoliItem(   
            poli: Poli(namaPoli: 'Poli Kandungan'),   
          ),   
          PoliItem(   
            poli: Poli(namaPoli: 'Poli THT'),   
          ),   
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PoliForm(),
            ),
          );
        },
        icon: const Icon(Icons.add),
        label: const Text('Tambah Poli'),
      ),
    );
  }
}
