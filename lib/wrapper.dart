import 'package:firebaseflutter/screens/authenticate/authenticate.dart';
import 'package:firebaseflutter/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

   if(user == null){
     return Authenticate();
   }
   else{
     return Home();
   }
  }
}
