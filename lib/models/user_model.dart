// ignore_for_file: file_names

class UserModel {
  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.profileImageUrl,
  });

  // Convert Firestore document to UserModel
  factory UserModel.fromMap(Map<String, dynamic> map, String id) {
    return UserModel(
      id: id,
      name: map['name'] as String,
      email: map['email'] as String,
      profileImageUrl: map['profileImageUrl'] as String,
    );
  }
  final String id;
  final String name;
  final String email;
  final String profileImageUrl;

  // Convert UserModel to Firestore document
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'profileImageUrl': profileImageUrl,
    };
  }
}
