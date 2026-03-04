import 'dart:io';

// =====================
// CLASS PARENT
// =====================
class Mahasiswa {
  String? nama;
  int? nim;
  String? jurusan;

  void tampilkanData() {
    print("Nama: ${nama ?? 'Belum diisi'}");
    print("NIM: ${nim ?? 'Belum diisi'}");
    print("Jurusan: ${jurusan ?? 'Belum diisi'}");
  }
}

// =====================
// EXTENDS
// =====================
class MahasiswaAktif extends Mahasiswa {
  int? semester;

  void tampilkanStatus() {
    print("Semester: ${semester ?? 'Belum diisi'}");
  }
}

class MahasiswaAlumni extends Mahasiswa {
  int? tahunLulus;

  void tampilkanStatus() {
    print("Tahun Lulus: ${tahunLulus ?? 'Belum diisi'}");
  }
}

// MIXIN
mixin Mengajar {
  void mengajar() {
    print("Sedang mengajar mahasiswa.");
  }
}

mixin Meneliti {
  void meneliti() {
    print("Sedang melakukan penelitian.");
  }
}

mixin Administrasi {
  void urusAdministrasi() {
    print("Sedang mengurus administrasi kampus.");
  }
}

// CLASS DOSEN & FAKULTAS
class Dosen extends Mahasiswa with Mengajar, Meneliti {
  String? mataKuliah;

  void tampilkanDosen() {
    tampilkanData();
    print("Mata Kuliah: ${mataKuliah ?? 'Belum diisi'}");
  }
}

class Fakultas extends Mahasiswa with Administrasi {
  String? namaFakultas;

  void tampilkanFakultas() {
    tampilkanData();
    print("Nama Fakultas: ${namaFakultas ?? 'Belum diisi'}");
  }
}


// MAIN

void main() {
  print("Pilih jenis:");
  print("1. Mahasiswa Aktif");
  print("2. Mahasiswa Alumni");
  print("3. Dosen");
  print("4. Fakultas");

  String? pilihan = stdin.readLineSync();

  if (pilihan == "1") {
    MahasiswaAktif mahasiswa = MahasiswaAktif();

    print("Masukkan Nama:");
    mahasiswa.nama = stdin.readLineSync();

    print("Masukkan NIM:");
    mahasiswa.nim = int.tryParse(stdin.readLineSync() ?? '');

    print("Masukkan Jurusan:");
    mahasiswa.jurusan = stdin.readLineSync();

    print("Masukkan Semester:");
    mahasiswa.semester = int.tryParse(stdin.readLineSync() ?? '');

    print("\n=== DATA MAHASISWA AKTIF ===");
    mahasiswa.tampilkanData();
    mahasiswa.tampilkanStatus();

  } else if (pilihan == "2") {
    MahasiswaAlumni mahasiswa = MahasiswaAlumni();

    print("Masukkan Nama:");
    mahasiswa.nama = stdin.readLineSync();

    print("Masukkan NIM:");
    mahasiswa.nim = int.tryParse(stdin.readLineSync() ?? '');

    print("Masukkan Jurusan:");
    mahasiswa.jurusan = stdin.readLineSync();

    print("Masukkan Tahun Lulus:");
    mahasiswa.tahunLulus = int.tryParse(stdin.readLineSync() ?? '');

    print("\n=== DATA MAHASISWA ALUMNI ===");
    mahasiswa.tampilkanData();
    mahasiswa.tampilkanStatus();

  } else if (pilihan == "3") {
    Dosen dosen = Dosen();

    print("Masukkan Nama:");
    dosen.nama = stdin.readLineSync();

    print("Masukkan NIM:");
    dosen.nim = int.tryParse(stdin.readLineSync() ?? '');

    print("Masukkan Jurusan:");
    dosen.jurusan = stdin.readLineSync();

    print("Masukkan Mata Kuliah:");
    dosen.mataKuliah = stdin.readLineSync();

    print("\n=== DATA DOSEN ===");
    dosen.tampilkanDosen();
    dosen.mengajar();
    dosen.meneliti();

  } else if (pilihan == "4") {
    Fakultas fakultas = Fakultas();

    print("Masukkan Nama:");
    fakultas.nama = stdin.readLineSync();

    print("Masukkan NIM:");
    fakultas.nim = int.tryParse(stdin.readLineSync() ?? '');

    print("Masukkan Jurusan:");
    fakultas.jurusan = stdin.readLineSync();

    print("Masukkan Nama Fakultas:");
    fakultas.namaFakultas = stdin.readLineSync();

    print("\n=== DATA FAKULTAS ===");
    fakultas.tampilkanFakultas();
    fakultas.urusAdministrasi();

  } else {
    print("Pilihan tidak valid");
  }
}