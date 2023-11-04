
class SignUpWithEmailAndPasswordFailure{
  final String message;

  const SignUpWithEmailAndPasswordFailure([this.message="An Unknown error occurred"]);

  factory SignUpWithEmailAndPasswordFailure.code(String code){

    switch(code){
      case 'weak-password':
        return const SignUpWithEmailAndPasswordFailure('Please enter a strong password');
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordFailure('Please enter a valid email');
      case 'email-already-in-use':
        return const SignUpWithEmailAndPasswordFailure('An account already exist within this email');
      case 'user-disable':
        return const SignUpWithEmailAndPasswordFailure('This account is disable please contact with customer care');
      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }

}