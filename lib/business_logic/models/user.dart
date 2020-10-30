class User {
  String username;
  String email;
  String phoneNumber;
  String accountNumber;
  String id;
  String customerId;
  String firstname;
  String lastname;
  String token;

  User({
    this.username,
    this.email,
    this.phoneNumber,
    this.id,
    this.customerId,
    this.token,
    this.accountNumber,
    this.firstname,
    this.lastname,
  });

  factory User.fromJson(Map<String, dynamic> data) {
    return User(
      username: data['username'],
      phoneNumber: data['phoneNumber'],
      accountNumber: data['accountNumber'],
      email: data['email'],
      token: data['token'],
      firstname: data['firstname'],
      lastname: data['lastname'],
      id: data['id'],
      customerId: data['customerId'],
    );
  }
}
