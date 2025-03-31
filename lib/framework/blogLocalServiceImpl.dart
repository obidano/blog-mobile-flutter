
import 'package:blog_mobile/business/models/User.dart';
import 'package:blog_mobile/business/services/blogLocalService.dart';
import 'package:get_storage/get_storage.dart';
import 'dart:convert';

class BlogLocalNetworkServiceImpl implements BlogLocalService {
  GetStorage? box;

  BlogLocalNetworkServiceImpl({this.box});

  @override
  Future<bool> sauvegarderUser(User user) async{
    var data=user.toMap();
    await box?.write("user", jsonEncode(data));
    return true;
  }

}