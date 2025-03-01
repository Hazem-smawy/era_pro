import 'device_info_modle.dart';
import 'token_model.dart';
import 'user_info_auth_model.dart';
import '../../domain/entities/auth_entity.dart';

class AuthModel extends AuthEntity {
  const AuthModel(
      {required super.token, required super.user, required super.deviceInfo});

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
        token: TokenModel.fromJson(json['token']),
        user: UserInfoAuthModel.fromJson(json['user']),
        deviceInfo: DeviceInfoModel.fromJson(json['deviceInfo']));
  }

  Map<String, dynamic> toJson() {
    return {'user': user, 'token': token, 'deviceInfo': deviceInfo};
  }
}
