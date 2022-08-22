class UserEntity {
  UserEntity({
    required this.id,
    required this.email,
    this.photoUrl,
    this.name,
  });

  final String id;
  final String? name;
  final String email;
  final String? photoUrl;
}
