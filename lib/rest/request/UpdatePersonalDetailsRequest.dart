import 'package:nakli_beta_service_provider/rest/request/Category.dart';

class UpdatePersonalDetailsRequest {
  late UpdatePersonalDetailsModel providerModel;

  UpdatePersonalDetailsRequest({required this.providerModel});

  UpdatePersonalDetailsRequest.fromJson(Map<String, dynamic> json) {
    providerModel = (json['providerModel'] != null
        ? new UpdatePersonalDetailsModel.fromJson(json['providerModel'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.providerModel != null) {
      data['providerModel'] = this.providerModel.toJson();
    }
    return data;
  }
}

class UpdatePersonalDetailsModel {
  late String providerId;
  late String name;
  late String emailId;
  late String mobile;
  late String city;
  late String state;
  late String address;
  late List<Category> serviceCategory = [];

  UpdatePersonalDetailsModel(
      {
        required this.providerId,
      required this.name,
      required this.emailId,
      required this.mobile,
      required this.city,
      required this.state,
      required this.address,
      required this.serviceCategory});

  UpdatePersonalDetailsModel.fromJson(Map<String, dynamic> json) {
    providerId = json['providerId'];
    name = json['name'];
    emailId = json['emailId'];
    mobile = json['mobile'];
    city = json['city'];
    state = json['state'];
    address = json['address'];
    if (json['serviceCategory'] != null) {
      serviceCategory = <Category>[];
      json['serviceCategory'].forEach((v) {
        serviceCategory.add(new Category.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['providerId'] = this.providerId;
    data['name'] = this.name;
    data['emailId'] = this.emailId;
    data['mobile'] = this.mobile;
    data['city'] = this.city;
    data['state'] = this.state;
    data['address'] = this.address;
    data['serviceCategory'] =
        this.serviceCategory.map((v) => v.toJson()).toList();
    return data;
  }
}
