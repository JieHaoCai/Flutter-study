import './baseApi.dart';

class UserApi extends BaseApi {
  Future<Map<String, dynamic>> getUserInfo(String userId) async {
    return await get('/user/$userId');
  }
}


// // 获取用户信息
// try {
//   final userInfo = await UserApi().getUserInfo(userId);
//   // 处理用户信息
// } catch (e) {
//   // 处理错误
// }