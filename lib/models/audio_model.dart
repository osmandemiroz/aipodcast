class AudioModel {
  AudioModel({
    required this.id,
    required this.title,
    required this.fileUrl,
    required this.createdAt,
  });

  // Convert Firestore document to AudioModel
  factory AudioModel.fromMap(Map<String, dynamic> map, String id) {
    return AudioModel(
      id: id,
      title: map['title'] as String,
      fileUrl: map['fileUrl'] as String,
      createdAt: map['createdAt'] as String,
    );
  }
  final String id;
  final String title;
  final String fileUrl;
  final String createdAt;

  // Convert AudioModel to Firestore document
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'fileUrl': fileUrl,
      'createdAt': createdAt,
    };
  }
}
