

class UserModel{
  final String? id;
  final String email;
  final String password;


const UserModel({
  this.id,
  required this.email,
  required this.password,

});

toJson(){
  return{
    "Email": email,
    "password": password,
  };
}
}