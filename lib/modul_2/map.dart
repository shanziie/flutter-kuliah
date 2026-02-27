import 'dart:io';

void main() {
  // membuat map dengan data awal
  Map<String, int> data = {'Anang': 081234567890, 'Arman': 082345678901, 'Doni': 083456789012};
  print('Data: $data');

  // menambahkan data ke map
  data['Budi'] = 084567890123; 
  print('Data setelah ditambahkan: $data');

  // mengambil data berdasarkan key
  print('Nomor Anang: ${data['Anang']}');

  // ubah data haous data cek ddata berdasarkan keey hitung jumlah  data tam[ilkam semua key tampilakn semua value
  data['Arman'] = 082345678902;   
  print('Data setelah diubah: $data');

  // menghapus data dari map
  data.remove('Doni');
  print('Data setelah dihapus: $data');

  // cek apakah key tertentu ada dalam map
  if (data.containsKey('Anang')) {
    print('Anang ada dalam map.');
  } else {
    print('Anang tidak ada dalam map.');
  }

  // hitung jumlah data dalam map
  print('Jumlah data: ${data.length}');

  // tampilkan semua key
  print('Semua key: ${data.keys}');

  // tampilkan semua value
  print('Semua value: ${data.values}');

  //buat data dengan inputan single key dan multiple seperti pada list dan set contoj hasilnya
  
  print('\n=== INPUT DATA MAHASISWA (SINGLE) ===');

  Map<String, String> dataMahasiswa = {};

  stdout.write('Masukkan NIM: ');
  String nim = stdin.readLineSync()!;

  stdout.write('Masukkan Nama: ');
  String nama = stdin.readLineSync()!;

  stdout.write('Masukkan Jurusan: ');
  String jurusan = stdin.readLineSync()!;

  stdout.write('Masukkan IPK: ');
  String ipk = stdin.readLineSync()!;

  dataMahasiswa['nim'] = nim;
  dataMahasiswa['nama'] = nama;
  dataMahasiswa['jurusan'] = jurusan;
  dataMahasiswa['ipk'] = ipk;

  print('Data Mahasiswa: $dataMahasiswa');

  print('\n=== INPUT MULTIPLE MAHASISWA ===');

  stdout.write('Masukkan jumlah mahasiswa: ');
  int jumlah = int.parse(stdin.readLineSync()!);

  List<Map<String, String>> listMahasiswa = [];

  for (int i = 0; i < jumlah; i++) {
    print('\n--- Mahasiswa ke-${i + 1} ---');

    stdout.write('Masukkan NIM: ');
    String nim = stdin.readLineSync()!;

    stdout.write('Masukkan Nama: ');
    String nama = stdin.readLineSync()!;

    stdout.write('Masukkan Jurusan: ');
    String jurusan = stdin.readLineSync()!;

    stdout.write('Masukkan IPK: ');
    String ipk = stdin.readLineSync()!;

    Map<String, String> mhs = {
      'nim': nim,
      'nama': nama,
      'jurusan': jurusan,
      'ipk': ipk,
    };

    listMahasiswa.add(mhs);
  }

  print('\n=== HASIL DATA MAHASISWA ===');
  for (int i = 0; i < listMahasiswa.length; i++) {
    print('Mahasiswa ke-${i + 1}: ${listMahasiswa[i]}');
  }
}