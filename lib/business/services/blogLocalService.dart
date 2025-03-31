
import '../models/User.dart';

abstract class BlogLocalService{
  Future<bool> sauvegarderUser(User user);
}