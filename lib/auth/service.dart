import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  FirebaseAuth auth=FirebaseAuth.instance;
Future<User?> signup(String email,String password)async{
UserCredential signupcridential= await auth.createUserWithEmailAndPassword(email: email, password: password);
print(signupcridential.user);
}

Future<User?> login(String email,String password)async{
  UserCredential logincridential= await auth.signInWithEmailAndPassword(email: email, password: password);
  print(logincridential.user);
  }
}