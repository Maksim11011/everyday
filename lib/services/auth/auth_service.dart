import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // Получить экземпляр Firebase auth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // Получить текущего пользователя
  User? getCurrentUer() {
    return _firebaseAuth.currentUser;
  }

  // Вход
  Future<UserCredential> signInWithEmailPassword(String email, password) async {
    // Попробовать войти в систему
    try {
      // Вход пользователя
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return userCredential;
    }
    // Поймать любые ошибки
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  // Регистрация
  Future<UserCredential> signUpWithEmailPassword(String email, password) async {
    // Попробовать зарегистрировать пользователя
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return userCredential;
    }
    // Поймать любые ошибки
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  // Выход
  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}
