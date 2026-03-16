import 'package:flutter_riverpod/legacy.dart';
import '../models/resume_model.dart';
import '../services/resume_service.dart';

class ResumeNotifier extends StateNotifier<ResumeCardModel?> {

  ResumeNotifier() : super(null);

  final ResumeService _service = ResumeService();

  bool isLoading = false;

  Future<void> loadResume() async {

    isLoading = true;

    final result = await _service.getResume();

    state = result;

    isLoading = false;
  }
}

final resumeProvider =
    StateNotifierProvider<ResumeNotifier, ResumeCardModel?>((ref) {
  return ResumeNotifier();
});