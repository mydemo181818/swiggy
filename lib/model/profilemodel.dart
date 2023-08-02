// ignore_for_file: unnecessary_new, prefer_collection_literals, unnecessary_this

class ProfileModel {
  bool? status;
  String? msg;
  Data? data;

  ProfileModel({this.status, this.msg, this.data});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
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

  Data(
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

  Data.fromJson(Map<String, dynamic> json) {
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
