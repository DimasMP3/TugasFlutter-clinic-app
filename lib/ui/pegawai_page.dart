import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_detail.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  final List<Pegawai> pegawaiList = [
    Pegawai(id: 1, nip: "123456", nama: "Abang Febri", tanggalLahir: "2004-04-07", noTelepon: "0813242343234", email: "warungocit@gmail.com"),
    Pegawai(id: 2, nip: "123457", nama: "Dio Sang Analis", tanggalLahir: "2005-06-12", noTelepon: "08324123432", email: "diojambu@gmail.com"),
    Pegawai(id: 3, nip: "123458", nama: "AA Haidar", tanggalLahir: "2003-03-05", noTelepon: "08765456789", email: "haidarAA@gmail.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Pegawai")),
      body: ListView.builder(
        itemCount: pegawaiList.length,
        itemBuilder: (context, index) {
          final p = pegawaiList[index];
          return Card(
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.person)),
              title: Text(p.nama ?? ''),
              subtitle: Text('NIP: ${p.nip ?? '-'} . Telp: ${p.noTelepon ?? '-'}'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PegawaiDetail(pegawai: p),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}