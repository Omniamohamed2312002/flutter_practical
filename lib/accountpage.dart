
import 'package:flutter/material.dart';
import 'package:flutter_practical/signin.dart';

void main() {
  runApp(const AccountScreenApp());
}

class AccountScreenApp extends StatelessWidget {
  const AccountScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AccountScreen(),
    );
  }
}

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 55, 54, 54),
     
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 55, 54, 54),
        title: const Text(
          'Account',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
           
          ),
        ),
        centerTitle: false,
        elevation: 0,
       
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Account Options
          const AccountOption(
            icon: Icons.person_outline,
            title: 'Profile',
            subtitle: 'Edit your password, name, address, email, username',
          ),
          const Divider(indent: 20,endIndent: 20,height: 0,),

          const AccountOption(
            icon: Icons.security,
            title: 'Security',
            subtitle: 'FaceID, Two-Step Verification',
          ),
        const Divider(indent: 20,endIndent: 20,height: 0,),

          const AccountOption(
            icon: Icons.shopping_bag_outlined,
            title: 'Buy Settings',
            subtitle: 'Bending History',
          ),
         const Divider(indent: 20,endIndent: 20,height: 0,),

          const AccountOption(
            icon: Icons.settings,
            title: 'Settings',
            subtitle: 'Payment Method, Shipping Address, Notification Settings',
          ),

          // Extra Options
          const Divider(indent: 20,endIndent: 20,height: 0,),
          SizedBox(height: 40,),
          const ExtraOption(title: 'Rate Application'),
           const Divider(indent: 20,endIndent: 20,height: 0,),
          const ExtraOption(title: 'Reviews'),
           const Divider(indent: 20,endIndent: 20,height: 0,),
          const ExtraOption(
            title: 'Currency',
            trailingText: 'USD',
          ),
 const Divider(indent: 20,endIndent: 20,height: 0,),
          const Spacer(),

          // Sign Out Button
          Padding(
            padding: const EdgeInsets.only(left:30.0, right: 30.0, bottom: 70),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16.0 , horizontal: 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
               
                   onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context){return SignInPage();}));
                   // Handle Sign Out
                 },
                  // Handle Sign Out
                
                child: const Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
      
    );
  }
}

class AccountOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const AccountOption({
    required this.icon,
    required this.title,
    required this.subtitle,
    super.key,
  });


@override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          icon,
          size: 28,
          color:Colors.white,
         
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontSize: 13,
          
        ),
      ),
      onTap: () {
        // Handle navigation or other action
      },
    );
  }
}

class ExtraOption extends StatelessWidget {
  final String title;
  final String? trailingText;

  const ExtraOption({
    required this.title,
    this.trailingText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 18,
         
        ),
      ),
      trailing: trailingText != null
          ? Text(
              trailingText!,
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 14,
              ),
            )
          : const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Color.fromARGB(255, 244, 243, 243),
            ),
      onTap: () {
        // Handle action for extra options
      },
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter_practical/signin.dart';

// class AccountScreen extends StatelessWidget {
//   const AccountScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Account',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//              color: Colors.black,
//           ),
//         ),
//         centerTitle: false,
//         elevation: 0,
//         backgroundColor: const Color.fromARGB(255, 60, 60, 60),
//         iconTheme: const IconThemeData(color: Colors.black),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Account Options
//           const AccountOption(
//             icon: Icons.person_outline,
//             title: 'Profile',
//             subtitle: 'Edit your password, name, address, email, username',
//           ),
//           const Divider(indent: 20,endIndent: 20,height: 0,),

//           const AccountOption(
//             icon: Icons.security,
//             title: 'Security',
//             subtitle: 'FaceID, Two-Step Verification',
//           ),
//         const Divider(indent: 20,endIndent: 20,height: 0,),

//           const AccountOption(
//             icon: Icons.shopping_bag_outlined,
//             title: 'Buy Settings',
//             subtitle: 'Bending History',
//           ),
//          const Divider(indent: 20,endIndent: 20,height: 0,),

//           const AccountOption(
//             icon: Icons.settings,
//             title: 'Settings',
//             subtitle: 'Payment Method, Shipping Address, Notification Settings',
//           ),

//           // Extra Options
//           const Divider(indent: 20,endIndent: 20,height: 0,),
//           SizedBox(height: 40,),
//           const ExtraOption(title: 'Rate Application'),
//            const Divider(indent: 20,endIndent: 20,height: 0,),
//           const ExtraOption(title: 'Reviews'),
//            const Divider(indent: 20,endIndent: 20,height: 0,),
//           const ExtraOption(
//             title: 'Currency',
//             trailingText: 'USD',
//           ),
//  const Divider(indent: 20,endIndent: 20,height: 0,),
//           const Spacer(),

//           // Sign Out Button
//           Padding(
//             padding: const EdgeInsets.only(left:30.0, right: 30.0, bottom: 70),
//             child: SizedBox(
//               width: double.infinity,
//               height: 50,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.pinkAccent,
//                   foregroundColor: Colors.white,
//                   padding: const EdgeInsets.symmetric(vertical: 16.0 , horizontal: 80),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8.0),
//                   ),
//                 ),
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context){return SignInPage();}));
//                   // Handle Sign Out
//                 },
//                 child: const Text(
//                   'Sign Out',
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//         ],
//       ),
//       backgroundColor: Colors.white,
//     );
//   }
// }

// class AccountOption extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final String subtitle;

//   const AccountOption({
//     required this.icon,
//     required this.title,
//     required this.subtitle,
//     super.key,
//   });


// @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Container(
//         height: 50,
//         width: 50,
//         decoration: BoxDecoration(
//           color: Colors.grey[200], // Grey shaded square
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: Icon(
//           icon,
//           size: 28,
//           color: Colors.black87,
//         ),
//       ),
//       title: Text(
//         title,
//         style: const TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 16,
//           color: Colors.black,
//         ),
//       ),
//       subtitle: Text(
//         subtitle,
//         style: const TextStyle(
//           fontSize: 13,
//           color: Colors.grey,
//         ),
//       ),
//       onTap: () {
//         // Handle navigation or other action
//       },
//     );
//   }
// }

// class ExtraOption extends StatelessWidget {
//   final String title;
//   final String? trailingText;

//   const ExtraOption({
//     required this.title,
//     this.trailingText,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         title,
//         style: const TextStyle(
//           fontWeight: FontWeight.w900,
//           fontSize: 18,
//           color: Colors.black,
//         ),
//       ),
//       trailing: trailingText != null
//           ? Text(
//               trailingText!,
//               style: const TextStyle(
//                 color: Colors.blue,
//                 fontSize: 14,
//               ),
//             )
//           : const Icon(
//               Icons.arrow_forward_ios,
//               size: 16,
//               color: Colors.black45,
//             ),
//       onTap: () {
//         // Handle action for extra options
//       },
//     );
//   }
// }


//  onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context){return SignInPage();}));
//                   // Handle Sign Out
//                 },