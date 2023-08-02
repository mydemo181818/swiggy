class SigninModel {
  bool? status;
  String? msg;
  String? token;
  User? user;

  SigninModel({this.status, this.msg, this.token, this.user});

  SigninModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    token = json['token'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    data['token'] = this.token;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  String? sId;
  String? status;
  String? role;
  String? name;
  String? phoneNo;
  String? nationality;
  String? state;
  String? district;
  String? password;
  String? gender;
  String? createDate;
  String? updateDate;
  int? iV;

  User(
      {this.sId,
      this.status,
      this.role,
      this.name,
      this.phoneNo,
      this.nationality,
      this.state,
      this.district,
      this.password,
      this.gender,
      this.createDate,
      this.updateDate,
      this.iV});

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    status = json['status'];
    role = json['role'];
    name = json['name'];
    phoneNo = json['phoneNo'];
    nationality = json['nationality'];
    state = json['state'];
    district = json['district'];
    password = json['password'];
    gender = json['gender'];
    createDate = json['create_date'];
    updateDate = json['update_date'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['status'] = this.status;
    data['role'] = this.role;
    data['name'] = this.name;
    data['phoneNo'] = this.phoneNo;
    data['nationality'] = this.nationality;
    data['state'] = this.state;
    data['district'] = this.district;
    data['password'] = this.password;
    data['gender'] = this.gender;
    data['create_date'] = this.createDate;
    data['update_date'] = this.updateDate;
    data['__v'] = this.iV;
    return data;
  }
}