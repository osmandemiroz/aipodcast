import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_podcast_app/models/audio_model.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> uploadAudio(AudioModel audio) async {
    await _firestore.collection('audios').doc(audio.id).set(audio.toMap());
  }

  Stream<List<AudioModel>> getAudios() {
    return _firestore.collection('audios').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return AudioModel.fromMap(doc.data(), doc.id);
      }).toList();
    });
  }
}
