class account {
 late String username;
 late String password;
 late String email;
 late String resetPassToken;
 late String resetPassTokenExp;
 late String fullName;
 late String phone;
 late int amount;
 late bool isActive;

  account(
      {required this.username,
        required this.password,
        required this.email,
        required this.resetPassToken,
        required this.resetPassTokenExp,
        required this.fullName,
        required this.phone,
        required this.amount,
        required this.isActive});

  account.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
    email = json['email'];
    resetPassToken = json['resetPassToken'];
    resetPassTokenExp = json['resetPassTokenExp'];
    fullName = json['fullName'];
    phone = json['phone'];
    amount = json['amount'];
    isActive = json['isActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['password'] = this.password;
    data['email'] = this.email;
    data['resetPassToken'] = this.resetPassToken;
    data['resetPassTokenExp'] = this.resetPassTokenExp;
    data['fullName'] = this.fullName;
    data['phone'] = this.phone;
    data['amount'] = this.amount;
    data['isActive'] = this.isActive;
    return data;
  }
}