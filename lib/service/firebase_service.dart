import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_job_boarding/customException/custom_exception.dart';
import 'package:flutter_job_boarding/model/job_model.dart';
import 'package:flutter_job_boarding/model/sign_up_model.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_job_boarding/providers/user_image_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class IFirebaseService {
  Future<void> signIn(String? email, String? password);
  Future<void> signUp(SignUpModel model, WidgetRef ref);
  Future<void> signOut();
  Future<Map<String, dynamic>?> getUserData();
  Future<void> saveJob(JobModel model);
  Future<void> writeJob(JobModel model, WidgetRef ref);
  Stream<List<JobModel>>? getSavedJobs();

  final FirebaseAuth auth;
  final FirebaseFirestore firestore;
  final FirebaseStorage storage;

  IFirebaseService({
    required this.auth,
    required this.firestore,
    required this.storage,
  });
}

class FirebaseService extends IFirebaseService {
  FirebaseService({
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
  Stream<List<JobModel>>? getSavedJobs() {
    final userId = auth.currentUser!.uid;
    final snapshot = firestore
        .collection("users")
        .doc(userId)
        .collection("SavedJobs")
        .snapshots();

    final savedJobs = snapshot.map(
      (event) => event.docs.map((e) => JobModel.fromJson(e.data())).toList(),
    );

    return savedJobs;
  }

  @override
  Future<void> writeJob(JobModel model, WidgetRef ref) async {
    String? imageUrl;
    final userImage = ref.watch(userImageProvider);
    if (userImage != null) {
      final reference = storage.ref().child("${model.company}.jpg");
      await reference.putFile(userImage);
      imageUrl = await reference.getDownloadURL();
    }

    await firestore.collection("jobs").doc().set(
      {
        "logo": imageUrl,
        "company": model.company,
        "field": model.field,
        "postedDuration": model.postedDuration,
        "location": model.location,
        "experience": model.experience,
        "type": model.type,
        "salary": model.salary,
        "description": model.description,
        "id": model.id,
        "skills": model.skills,
        "role": model.role,
      },
    );
  }
}

/* required String logo,
    required String field,
    required String company,
    required String postedDuration,
    required String location,
    required String experience,
    required String type,
    required String salary,
    required String description,
    required String id,
    required List<String> skills,
    required String role, */
