// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
class UserModel{
  final int id;
  final String name;
  final String phone;
  UserModel({
    required this.id,
    required this.name,
    required this.phone,
});
}
class  UsersScreen extends StatelessWidget {
  List<UserModel> users =[
    UserModel(id: 1,
        name: 'AhmedSaeed', phone: '+201007015057'
    ),
    UserModel(id: 2,
        name: 'Mohamed Saeed', phone: '+201107015057'
    ),
    UserModel(id: 3,
        name: 'Mahmoud Saeed', phone: '+201207015057'
    ),
    UserModel(id: 1,
        name: 'AhmedSaeed', phone: '+201007015057'
    ),
    UserModel(id: 2, name: 'Mohamed Saeed', phone: '+201107015057'
    ),
    UserModel(id: 3, name: 'Mahmoud Saeed', phone: '+201207015057'
    ),
  ];
  UsersScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(
          'Uesrs',
        ),
      ),
      body: ListView.separated(itemBuilder: (context,index)=>buildUserItem(users[index]),
          separatorBuilder: (context,index)=>
              Padding(padding: const EdgeInsetsDirectional.only(start:20.0,),
                child: Container(
                  width: double.infinity,
                  height: 1.0,
                  color:Colors.grey[300],
                ),
              ),
        itemCount: users.length,
      ),
    );
  }
  Widget buildUserItem(UserModel user)=>Padding(padding:const EdgeInsets.all(20.0,) ,
    child:Row(
      children: [
        // ignore: prefer_const_constructors
        CircleAvatar(
          radius: 25.0,
          child:  Text(
            '${user.id}',
            style:const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ) ,
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(user.name,
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(user.phone,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    ),
  );
  // build item
}
// // import 'package:flutter/material.dart';
// //
// // class RegistrationPage extends StatelessWidget {
// //   final _formKey = GlobalKey<FormState>();
// //   final TextEditingController _nameController = TextEditingController();
// //   final TextEditingController _emailController = TextEditingController();
// //   final TextEditingController _passwordController = TextEditingController();
// //
// //   RegistrationPage({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Registration Page'),
// //       ),
// //       body: SingleChildScrollView(
// //         child: Form(
// //           key: _formKey,
// //           child: Column(
// //             children: <Widget>[
// //               Padding(
// //                 padding: const EdgeInsets.all(16.0),
// //                 child: TextFormField(
// //                   controller: _nameController,
// //                   keyboardType: TextInputType.text,
// //                   validator: (value) {
// //                     if (value!.isEmpty) {
// //                       return 'Please enter your name';
// //                     }
// //                     return null;
// //                   },
// //                   decoration: const InputDecoration(
// //                     hintText: 'Name',
// //                     icon: Icon(Icons.person),
// //                   ),
// //                 ),
// //               ),
// //               Padding(
// //                 padding: const EdgeInsets.all(16.0),
// //                 child: TextFormField(
// //                   controller: _emailController,
// //                   keyboardType: TextInputType.emailAddress,
// //                   validator: (value) {
// //                     if (value!.isEmpty) {
// //                       return 'Please enter your email address';
// //                     } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
// //                       return 'Please enter a valid email address';
// //                     }
// //                     return null;
// //                   },
// //                   decoration: const InputDecoration(
// //                     hintText: 'Email',
// //                     icon: Icon(Icons.email),
// //                   ),
// //                 ),
// //               ),
// //               Padding(
// //                 padding: const EdgeInsets.all(16.0),
// //                 child: TextFormField(
// //                   controller: _passwordController,
// //                   keyboardType: TextInputType.visiblePassword,
// //                   obscureText: true,
// //                   validator: (value) {
// //                     if (value!.isEmpty) {
// //                       return 'Please enter your password';
// //                     } else if (value.length < 8) {
// //                       return 'Password must be at least 8 characters';
// //                     }
// //                     return null;
// //                   },
// //                   decoration: const InputDecoration(
// //                     hintText: 'Password',
// //                     icon: Icon(Icons.lock),
// //                   ),
// //                 ),
// //               ),
// //               Padding(
// //                 padding: const EdgeInsets.all(16.0),
// //                 child: RaisedButton(
// //                   onPressed: () {
// //                     if (_formKey.currentState!.validate()) {
// //                       // submit registration form
// //                     }
// //                   },
// //                   child: const Text('Register'),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   // ignore: non_constant_identifier_names
// //   RaisedButton({required Null Function() onPressed, required Text child}) {}
// // }
//
// import 'package:flutter/material.dart';
//
// class HospitalRegistrationPage extends StatefulWidget {
//   const HospitalRegistrationPage({super.key});
//
//   @override
//   // ignore: library_private_types_in_public_api
//   _HospitalRegistrationPageState createState() => _HospitalRegistrationPageState();
// }
//
// class _HospitalRegistrationPageState extends State<HospitalRegistrationPage> {
//   final _formKey = GlobalKey<FormState>();
//   bool _isChecked = false;
//   // ignore: prefer_typing_uninitialized_variables
//   var value$;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Hospital Registration'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 const SizedBox(height: 16.0),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     labelText: 'Hospital Name',
//                   ),
//                   validator: (value) {
//                     if (value$.isEmpty) {
//                       return 'Please enter hospital name';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16.0),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     labelText: 'Address',
//                   ),
//                   validator: (value) {
//
//                     if (value$.isEmpty) {
//                       return 'Please enter address';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16.0),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     labelText: 'Phone Number',
//                   ),
//                   keyboardType: TextInputType.phone,
//                   validator: (value) {
//                     if (value$.isEmpty) {
//                       return 'Please enter phone number';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16.0),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     labelText: 'Email Address',
//                   ),
//                   keyboardType: TextInputType.emailAddress,
//                   validator: (value) {
//                     if (value$.isEmpty) {
//                       return 'Please enter email address';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16.0),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     labelText: 'Password',
//                   ),
//                   obscureText: true,
//                   validator: (value) {
//                     if (value$.isEmpty) {
//                       return 'Please enter password';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16.0),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     labelText: 'Confirm Password',
//                   ),
//                   obscureText: true,
//                   validator: (value) {
//                     if (value$.isEmpty) {
//                       return 'Please confirm password';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16.0),
//                 Row(
//                   children: [
//                     Checkbox(
//                       value: _isChecked,
//                       // ignore: avoid_types_as_parameter_names
//                       onChanged: (bool ) {
//                         setState(() {
//                           _isChecked = false  ;
//                         });
//                       },
//                     ),
//                     const Expanded(
//                       child: Text(
//                         'I agree to the terms and conditions of the hospital',
//                         style: TextStyle(fontSize: 14.0),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 16.0),
//                 RaisedButton(
//                   color: Theme.of(context).primaryColor,
//                   textColor: Colors.white,
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {
//                       // TODO: Submit data and navigate to next page
//                     }
//                   },
//                   child: const Text('Register'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   // ignore: non_constant_identifier_names
//   RaisedButton({required Color color, required Color textColor, required Null Function() onPressed, required Text child}) {}
// }
//
//
//
