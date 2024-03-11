import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  //Sign up
  Future<String?> registration({
    required String email,
    required String password,
})
  async{
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    return 'Success';
    }
    on FirebaseAuthException catch (e){
      if(e.code == 'weak-password'){
        return 'Password is weak';
      }
      else if(e.code=='email-already-in-use'){
        return 'Email already exists';
      }
      else{
        return e.message;
      }
    }
    catch (e){
      return e.toString();
    }
  }

  Future<String?> login({
    required String email,
    required String password,
})
  async{
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      return 'Success';
    } on FirebaseAuthException catch(e){
        if(e.code == 'user-not-found'){
          return 'User not found';
        }
        else if(e.code == 'wrong-password'){
          return 'password entered is wrong';
        }
        else{
         return e.message;
        }
    }
    catch(e){
      return e.toString();
    }
    }
  }

