import 'package:equatable/equatable.dart';
import 'device_info_entity.dart';
import 'token_entity.dart';
import 'user_info_auth_entity.dart';

class AuthEntity extends Equatable {
  final TokenEntity? token;
  final UserInfoAuthEntity? user;
  final DeviceInfoEntity? deviceInfo;

  const AuthEntity(
      {required this.token, required this.user, required this.deviceInfo});
  @override
  List<Object?> get props => [token, user, deviceInfo];
}
