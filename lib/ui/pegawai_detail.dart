import 'package:flutter/material.dart';
import '../model/pegawai.dart';

class PegawaiDetail extends StatelessWidget {
  final Pegawai pegawai;
  const PegawaiDetail({super.key, required this.pegawai});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: Text(pegawai.nama ?? 'Detail Pegawai')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _RowInfo(label: 'ID', value: '${pegawai.id ?? '-'}'),
            _RowInfo(label: 'NIP', value: pegawai.nip ?? '-'),
            _RowInfo(label: 'Nama', value: pegawai.nama ?? '-'),
            _RowInfo(label: 'Tanggal Lahir', value: pegawai.tanggalLahir ?? '-'),
            _RowInfo(label: 'Telepon', value: pegawai.noTelepon ?? '-'),
            _RowInfo(label: 'Email', value: pegawai.email ?? '-'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Ubah')),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: scheme.error,
                    foregroundColor: scheme.onError,
                  ),
                  child: const Text('Hapus'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _RowInfo extends StatelessWidget {
  final String label;
  final String value;
  const _RowInfo({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          SizedBox(width: 130, child: Text('$label:')),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
