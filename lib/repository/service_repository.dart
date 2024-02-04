import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_job_boarding/model/sign_up_model.dart';
import 'package:flutter_job_boarding/service/authenticate_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ServiceRepository {
  IAuthenticateService service = AuthenticateService(
    auth: FirebaseAuth.instance,
    firestore: FirebaseFirestore.instance,
    storage: FirebaseStorage.instance,
  );

  Future<void> saveJob(JobModel model) async {
    await service.savedJob(model);
  }

  Future<void> signUp(SignUpModel model, WidgetRef ref) async {
    await service.signUp(model, ref);
  }

  Future<void> signIn(String email, String password) async {
    await service.signIn(email, password);
  }

  Future<void> signOut() async {
    await service.signOut();
  }

  Future<Map<String, dynamic>?> getUserData() async {
    final data = await service.getUserData();
    return data;
  }
}
