import 'dart:io';

void main() {
  List<String> names = ['Alfa', 'beta', 'Charlie'];
  print('Names: $names');

  //menambahkan data ke list
  names.add('Delta');
  print('Names setelah ditambahkan: $names');

  //mengambil data index tertentu
  print('Elemen pertama: ${names[0]}');
  print('Elemen kedua: ${names[1]}');

//mengubah data pada index tertentu
  names[1] = 'Bravo';
  print('Names setelah diubah: $names');

  // menghapus data dari list
  names.remove('Charlie');
  print('Names setelah dihapus: $names');

  
// menghitung jumlah data dalam list
  print('Jumlah nama: ${names.length}');

  //looping data list
  print('Menampilkan setiap elemen:');
    for (String name in names) {
      print(name);
    }

  // Membuat list kosong
  List<String> dataList = [];
  print('Data list kosong: $dataList');

  // Mengambil jumlah data dari pengguna
  int count = 0;
  while (count <= 0) {
    stdout.write('Masukkan jumlah list: ');
    String? input = stdin.readLineSync();
    try {
      count = int.parse(input!);
      if (count <= 0) {
        print('Masukkan angka lebih dari 0!');
      }
    } catch (e) {
      print('Input tidak valid! Masukkan angka yang benar.');
    }
  }

  // memasukkan data ke dalam list menggunakan for loop
  for (int i = 0; i < count; i++) {
    stdout.write('data ke-${i + 1}: ');
    String x = stdin.readLineSync()!;
    dataList.add(x);
  }

  // Menampilkan data list
  print('Data list:');
  print(dataList);

  // ubah data sesuai index
  stdout.write('\nMasukkan index yang ingin diubah: ');
  int editIndex = int.parse(stdin.readLineSync()!);

  if (editIndex >= 0 && editIndex < dataList.length) {
    stdout.write('Masukkan data baru: ');
    String newValue = stdin.readLineSync()!;
    dataList[editIndex] = newValue;
    print('Data berhasil diubah!');
  } else {
    print('Index tidak valid!');
  }

  // hapus sesuai index
  stdout.write('\nMasukkan index yang ingin dihapus: ');
  int deleteIndex = int.parse(stdin.readLineSync()!);

  if (deleteIndex >= 0 && deleteIndex < dataList.length) {
    dataList.removeAt(deleteIndex);
    print('Data berhasil dihapus!');
  } else {
    print('Index tidak valid!');
  }


  // nampilin hasil akhir
  print('\n=== SEMUA DATA ===');
  for (int i = 0; i < dataList.length; i++) {
    print('Index $i: ${dataList[i]}');
  }
}

