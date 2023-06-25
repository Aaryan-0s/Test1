class AuthEntity {
  final String fname;
  final String lname;
  final String? image;
  final String? email;
  final String username;
  final String password;

  AuthEntity({
    required this.fname,
    required this.lname,
    this.image,
    required this.email,
    required this.username,
    required this.password,
  });
}
