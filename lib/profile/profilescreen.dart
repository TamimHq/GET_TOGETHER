import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       leading: IconButton(
         onPressed: (){},
         icon: const Icon(LineAwesomeIcons.angle_left),
       ),
       title: const Text('Profile',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
     ),
     body: SingleChildScrollView(
       child: Container(
         padding: const EdgeInsets.all(30.0),
         child: Column(
           children: [
             SizedBox(
               width: 120,
               height: 120,
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(100),child: const Image(image: AssetImage('asset/food.png'),),
               ),
             ),
             const SizedBox(height: 10,),
             const Text('Tamim Haque',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
             const Text('email',style: TextStyle(color: Colors.black,fontSize: 10),),

             const SizedBox(height: 20,),

             SizedBox(width: double.infinity,
             child: ElevatedButton(
               onPressed: (){

               },
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.blueAccent,
                 shape: const StadiumBorder(),
               ),
               child: const Text(
                 'Edit Profile',
                 style: TextStyle(fontSize: 10,color:Colors.white),
               ),
             ),),
             const SizedBox(height: 10,),
             const Divider(),
             const SizedBox(height: 10,),

             ProfileMenuWidget(title: 'Setting',icon: LineAwesomeIcons.cog,onPress: (){},),
             ProfileMenuWidget(title: 'Billing Setting',icon: LineAwesomeIcons.wallet,onPress: (){},),
             ProfileMenuWidget(title: 'User Management',icon: LineAwesomeIcons.user_check,onPress: (){},),
             const Divider(color: Colors.grey,),
             const SizedBox(height: 10,),

             ProfileMenuWidget(title: 'Information',icon: LineAwesomeIcons.info,onPress: (){},),
              ProfileMenuWidget(
                title: 'Log Out',
                icon: LineAwesomeIcons.alternate_sign_out,
                textColor: Colors.red,
                endIcon: false,
                onPress: () {

                },

              ),
            ],
         ),


       ),
     ),
   );
  }

}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required  this.icon,
    required this.onPress,
    this.endIcon=true,
   this.textColor,
  });
  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.blueAccent,
        ),
        child:  Icon(
          icon,color: Colors.yellowAccent,
        ),

      ),
      title: Text(title,style: TextStyle(fontSize: 10,color: Colors.black,fontWeight: FontWeight.bold)?.apply(color: textColor),),
      trailing: endIcon? Container(
        width: 30,height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.blueAccent,
        ),
        child:  Icon(
          LineAwesomeIcons.angle_right,color: Colors.grey[350],size: 18.0,
        ),

      ):null,

    );
  }
}