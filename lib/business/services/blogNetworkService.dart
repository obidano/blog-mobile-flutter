
import 'package:blog_mobile/business/models/Authentification.dart';
import 'package:blog_mobile/business/models/User.dart';

abstract class BlogNetworkService{
  Future<User> authentifier(Authentification data );
}