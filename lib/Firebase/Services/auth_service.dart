import 'package:code_cafe/Authentication_Screens/login.dart';
import 'package:code_cafe/Bottom_Navigation_Screens/menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
class AuthService {
final auth = FirebaseAuth.instance;
final user = FirebaseAuth.instance.currentUser;



  Future<void> signUp(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      await Future.delayed(const Duration(seconds: 1));

      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ));
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'weak-password') {
        message = 'The password provided is to weak.';
      } else if (e.code == 'email-already-in-use') {
        message = 'An account already exist with that email..';
      }
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.SNACKBAR,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          fontSize: 14.0);
    } catch (e) {}
  }

  Future<void> SignIn(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      await Future.delayed(const Duration(seconds: 1));

      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>  MenuScreen(),
          ));
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        message = 'Wrong password is provided for that user..';
      }
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.SNACKBAR,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          fontSize: 14.0);

    } catch (e) {}

  }

 Future<void> SignOut({
      required BuildContext context
    })
       async{
           await FirebaseAuth.instance.signOut();
           await Future.delayed(const Duration(seconds: 1));
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
       }
                              //  SIGN IN WITH GOOGLE

       Future<UserCredential?> signInWithGoogle() async {
  try {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) {
      // The user canceled the sign-in
      return null;
    }

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    // Create a new credential
    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Sign in to Firebase with the Google credentials
    return await FirebaseAuth.instance.signInWithCredential(credential);
  } catch (e) {
    print("Error during Google Sign-In: $e");
    return null;
  }
}
                          // SIGN IN WITH FACEBOOK
   signInWithFacebook(BuildContext context) async {
    print("FaceBook");
    try {
      final result =
          await FacebookAuth.i.login(permissions: ['public_profile', 'email']);
      if (result.status == LoginStatus.success) {
        final userData = await FacebookAuth.i.getUserData();
        print(userData);
        if(userData!=null){
          print("Facebook request successful");
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) {
            return  MenuScreen();
          },));
        }
        else{
          print("Facebook request Failed");
        }
      }
    } catch (error) {
      print(error);
    }
  }


        //  }
        //  catch(e){
        //     throw Exception(
        //       Fluttertoast.showToast(
        //   msg: "Please connect to the internet..",
        //   toastLength: Toast.LENGTH_LONG,
        //   gravity: ToastGravity.SNACKBAR,
        //   backgroundColor: Colors.white,
        //   textColor: Colors.black,
        //   fontSize: 14.0)
        //     );

        //  }
   

// void signInAndRedirect(User? user,BuildContext) {

//        if(user ==null){
//          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
//           ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Sign-in failed.')),
//       );
//        }
//        else{
//          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MenuScreen(),));

//        }


     
//     }
  





}
