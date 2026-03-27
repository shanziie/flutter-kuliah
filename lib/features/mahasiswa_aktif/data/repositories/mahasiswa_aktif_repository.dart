import '../models/mahasiswa_aktif_model.dart';

class MahasiswaAktifRepository {
  /// Mendapatkan list data mahasiswa aktif
  Future<List<MahasiswaAktifModel>> getMahasiswaAktifList() async {
    // Simulasi delay jaringan (loading)
    await Future.delayed(const Duration(seconds: 1));

    // Data dummy agar bisa dites tampilannya
    return [
      MahasiswaAktifModel(
        nama: 'Ahmad Budi',
        nim: '2101001',
        email: 'ahmad@vokasi.ac.id',
        jurusan: 'D4 Teknik Informatika',
        semester: '5',
        status: 'Aktif',
      ),
      MahasiswaAktifModel(
        nama: 'Siti Sarah',
        nim: '2101002',
        email: 'siti@vokasi.ac.id',
        jurusan: 'D4 Teknik Informatika',
        semester: '5',
        status: 'Aktif',
      ),
    ]; 
  }
}