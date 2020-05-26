abstract class IAuthRepository {
  Future<void> auth();

  Future<void> logout();
}
