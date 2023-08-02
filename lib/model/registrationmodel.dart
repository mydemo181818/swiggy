class Registrationmodel {
  bool? status;
  String? msg;
  RegistedData? registedData;

  Registrationmodel({this.status, this.msg, this.registedData});

  Registrationmodel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    registedData = json['registedData'] != null
        ? new RegistedData.fromJson(json['registedData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.registedData != null) {
      data['registedData'] = this.registedData!.toJson();
    }
    return data;
  }
}

class RegistedData {
  String? status;
  String? role;
  String? sId;
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

  RegistedData(
      {this.status,
      this.role,
      this.sId,
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

  RegistedData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    role = json['role'];
    sId = json['_id'];
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
    data['status'] = this.status;
    data['role'] = this.role;
    data['_id'] = this.sId;
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
