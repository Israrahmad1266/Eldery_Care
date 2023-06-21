// ignore: camel_case_types
class userModel {
  List<Users>? users;

  userModel({this.users});

  userModel.fromJson(Map<String, dynamic> json) {
    if (json['users'] != null) {
      users = <Users>[];
      json['users'].forEach((v) {
        users!.add(Users.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (users != null) {
      data['users'] = users!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Users {
  String? sId;
  String? username;
  String? email;
  String? image;
  String? password;
  String? role;
  int? iV;

  Users(
      {this.sId,
      this.username,
      this.email,
      this.image,
      this.password,
      this.role,
      this.iV});

  Users.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    username = json['username'];
    email = json['email'];
    image = json['image'];
    password = json['password'];
    role = json['role'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['username'] = username;
    data['email'] = email;
    data['image'] = image;
    data['password'] = password;
    data['role'] = role;
    data['__v'] = iV;
    return data;
  }
}
