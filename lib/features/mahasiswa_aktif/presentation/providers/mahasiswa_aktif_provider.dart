import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:d4tivokasi/features/mahasiswa_aktif/data/models/mahasiswa_aktif_model.dart';
import 'package:d4tivokasi/features/mahasiswa_aktif/data/repositories/mahasiswa_aktif_repository.dart';

// Repository Provider
final mahasiswaAktifRepositoryProvider = Provider<MahasiswaAktifRepository>((ref) {
  return MahasiswaAktifRepository();
});

// Notifier
class MahasiswaAktifNotifier extends StateNotifier<AsyncValue<List<MahasiswaAktifModel>>> {
  final MahasiswaAktifRepository _repository;

  MahasiswaAktifNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadList();
  }

  Future<void> loadList() async {
    state = const AsyncValue.loading();
    try {
      final data = await _repository.getMahasiswaAktifList();
      state = AsyncValue.data(data);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> refresh() async {
    await loadList();
  }
}

// StateNotifierProvider
final mahasiswaAktifNotifierProvider = StateNotifierProvider.autoDispose<
    MahasiswaAktifNotifier, AsyncValue<List<MahasiswaAktifModel>>>((ref) {
  final repo = ref.watch(mahasiswaAktifRepositoryProvider);
  return MahasiswaAktifNotifier(repo);
});