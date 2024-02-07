import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_job_boarding/customException/custom_exception.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_job_boarding/model/sign_up_model.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_job_boarding/providers/user_image_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class IAuthenticateService {
  Future<void> signIn(String? email, String? password);
  Future<void> signUp(SignUpModel model, WidgetRef ref);
  Future<void> signOut();
  Future<Map<String, dynamic>?> getUserData();
  Future<void> saveJob(JobModel model);
  Future<List<JobModel>> getSavedJobs();

  final FirebaseAuth auth;
  final FirebaseFirestore firestore;
  final FirebaseStorage storage;

  IAuthenticateService({
    required this.auth,
    required this.firestore,
    required this.storage,
  });
}

class AuthenticateService extends IAuthenticateService {
  AuthenticateService({
    required super.auth,
    required super.firestore,
    required super.storage,
  });

  @override
  Future<void> signIn(String? email, String? password) async {
    try {
      if (email != null && password != null) {
        await auth.signInWithEmailAndPassword(email: email, password: password);
      }
    } on FirebaseAuthException catch (e) {
      throw CustomException(errorMessage: e.message.toString());
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await auth.signOut();
    } on FirebaseException catch (e) {
      throw CustomException(errorMessage: e.message.toString());
    }
  }

  @override
  Future<void> signUp(SignUpModel model, WidgetRef ref) async {
    try {
      String? imageUrl;
      UserCredential? credential = await auth.createUserWithEmailAndPassword(
        email: model.email,
        password: model.password,
      );

      final userId = credential.user!.uid;
      final userImage = ref.watch(userImageProvider);
      if (userImage != null) {
        final reference = storage.ref().child("user_image/${model.name}.jpg");
        await reference.putFile(userImage);
        imageUrl = await reference.getDownloadURL();
      }

      await firestore.collection("users").doc(userId).set(
        {
          "name": model.name,
          "surname": model.surname,
          "email": model.email,
          "phoneNumber": model.phoneNumber,
          "password": model.password,
          "uui": model.uuid,
          "imageUrl": imageUrl,
        },
      );
    } on FirebaseException catch (e) {
      throw CustomException(errorMessage: e.message.toString());
    }
  }

  @override
  Future<Map<String, dynamic>?> getUserData() async {
    try {
      if (auth.currentUser != null) {
        final userId = auth.currentUser!.uid;
        final snapshot = await firestore.collection("users").doc(userId).get();
        return snapshot.data() as Map<String, dynamic>;
      } else {
        return null;
      }
    } on FirebaseException catch (e) {
      throw CustomException(errorMessage: e.message.toString());
    }
  }

  @override
  Future<void> saveJob(JobModel model) async {
    try {
      final userId = auth.currentUser!.uid;

      await firestore
          .collection("users")
          .doc(userId)
          .collection("SavedJobs")
          .add(model.toJson());
    } on FirebaseException catch (e) {
      throw CustomException(errorMessage: e.message.toString());
    }
  }

  @override
  Future<List<JobModel>> getSavedJobs() async {
    try {
      final userId = auth.currentUser!.uid;
      final QuerySnapshot<Map<String, dynamic>> snapshot = await firestore
          .collection("users")
          .doc(userId)
          .collection("SavedJobs")
          .get();

      return snapshot.docs.map((e) => JobModel.fromJson(e.data())).toList();
    } on FirebaseException catch (e) {
      throw CustomException(errorMessage: e.message.toString());
    }
  }
}
