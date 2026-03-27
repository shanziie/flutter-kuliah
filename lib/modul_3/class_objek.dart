import 'dart:io';
import 'package:flutter/foundation.dart';

// =====================
// CLASS PARENT
// =====================
class Mahasiswa {
  String? nama;
  int? nim;
  String? jurusan;

  void tampilkanData() {
    debugPrint("Nama: ${nama ?? 'Belum diisi'}");
    debugPrint("NIM: ${nim ?? 'Belum diisi'}");
    debugPrint("Jurusan: ${jurusan ?? 'Belum diisi'}");
  }
}

// =====================
// EXTENDS
// =====================
class MahasiswaAktif extends Mahasiswa {
  int? semester;

  void tampilkanStatus() {
    debugPrint("Semester: ${semester ?? 'Belum diisi'}");
  }
}

class MahasiswaAlumni extends Mahasiswa {
  int? tahunLulus;

  void tampilkanStatus() {
    debugPrint("Tahun Lulus: ${tahunLulus ?? 'Belum diisi'}");
  }
}

// MIXIN
mixin Mengajar {
  void mengajar() {
    debugPrint("Sedang mengajar mahasiswa.");
  }
}

mixin Meneliti {
  void meneliti() {
    debugPrint("Sedang melakukan penelitian.");
  }
}

mixin Administrasi {
  void urusAdministrasi() {
    debugPrint("Sedang mengurus administrasi kampus.");
  }
}

// CLASS DOSEN & FAKULTAS
class Dosen extends Mahasiswa with Mengajar, Meneliti {
  String? mataKuliah;

  void tampilkanDosen() {
    tampilkanData();
    debugPrint("Mata Kuliah: ${mataKuliah ?? 'Belum diisi'}");
  }
}

class Fakultas extends Mahasiswa with Administrasi {
  String? namaFakultas;

  void tampilkanFakultas() {
    tampilkanData();
    debugPrint("Nama Fakultas: ${namaFakultas ?? 'Belum diisi'}");
  }
}


// MAIN

void main() {
  debugPrint("Pilih jenis:");
  debugPrint("1. Mahasiswa Aktif");
  debugPrint("2. Mahasiswa Alumni");
  debugPrint("3. Dosen");
  debugPrint("4. Fakultas");

  String? pilihan = stdin.readLineSync();

  if (pilihan == "1") {
    MahasiswaAktif mahasiswa = MahasiswaAktif();

    debugPrint("Masukkan Nama:");
    mahasiswa.nama = stdin.readLineSync();

    debugPrint("Masukkan NIM:");
    mahasiswa.nim = int.tryParse(stdin.readLineSync() ?? '');

    debugPrint("Masukkan Jurusan:");
    mahasiswa.jurusan = stdin.readLineSync();

    debugPrint("Masukkan Semester:");
    mahasiswa.semester = int.tryParse(stdin.readLineSync() ?? '');

    debugPrint("\n=== DATA MAHASISWA AKTIF ===");
    mahasiswa.tampilkanData();
    mahasiswa.tampilkanStatus();

  } else if (pilihan == "2") {
    MahasiswaAlumni mahasiswa = MahasiswaAlumni();

    debugPrint("Masukkan Nama:");
    mahasiswa.nama = stdin.readLineSync();

    debugPrint("Masukkan NIM:");
    mahasiswa.nim = int.tryParse(stdin.readLineSync() ?? '');

    debugPrint("Masukkan Jurusan:");
    mahasiswa.jurusan = stdin.readLineSync();

    debugPrint("Masukkan Tahun Lulus:");
    mahasiswa.tahunLulus = int.tryParse(stdin.readLineSync() ?? '');

    debugPrint("\n=== DATA MAHASISWA ALUMNI ===");
    mahasiswa.tampilkanData();
    mahasiswa.tampilkanStatus();

  } else if (pilihan == "3") {
    Dosen dosen = Dosen();

    debugPrint("Masukkan Nama:");
    dosen.nama = stdin.readLineSync();

    debugPrint("Masukkan NIM:");
    dosen.nim = int.tryParse(stdin.readLineSync() ?? '');

    debugPrint("Masukkan Jurusan:");
    dosen.jurusan = stdin.readLineSync();

    debugPrint("Masukkan Mata Kuliah:");
    dosen.mataKuliah = stdin.readLineSync();

    debugPrint("\n=== DATA DOSEN ===");
    dosen.tampilkanDosen();
    dosen.mengajar();
    dosen.meneliti();

  } else if (pilihan == "4") {
    Fakultas fakultas = Fakultas();

    debugPrint("Masukkan Nama:");
    fakultas.nama = stdin.readLineSync();

    debugPrint("Masukkan NIM:");
    fakultas.nim = int.tryParse(stdin.readLineSync() ?? '');

    debugPrint("Masukkan Jurusan:");
    fakultas.jurusan = stdin.readLineSync();

    debugPrint("Masukkan Nama Fakultas:");
    fakultas.namaFakultas = stdin.readLineSync();

    debugPrint("\n=== DATA FAKULTAS ===");
    fakultas.tampilkanFakultas();
    fakultas.urusAdministrasi();

  } else {
    debugPrint("Pilihan tidak valid");
  }
}