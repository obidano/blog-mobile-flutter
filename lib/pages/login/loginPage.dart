import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'loginCtrl.dart';

class Login extends ConsumerStatefulWidget {
  @override
  ConsumerState<Login> createState() => _LoginState();
}

class _LoginState extends ConsumerState<Login> {
  @override
  Widget build(BuildContext context) {
    var state=ref.watch(loginCtrlProvider);
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              Container(
                width: 280,
                height: 280,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  // borderRadius: BorderRadius.circular(100),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.person,
                  size: 180,
                  color: const Color.fromARGB(255, 40, 56, 63),
                ),
              ),
              SizedBox(height: 100),
              SizedBox(
                width: 400,
                height: 70,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    fillColor: Colors.grey[300],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    hintText: 'aaaa@aaaa.com',
                  ),
                ),
              ),

              SizedBox(
                width: 400,
                height: 70,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Mot de passe",
                    fillColor: Colors.grey[300],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    hintText: 'Saisir votre mot de passe secret...',
                  ),
                ),
              ),

              // SizedBox(height: 60,),
              Container(
                height: 50,
                width: 400,
                margin: EdgeInsets.only(bottom: 30),
                // color: Colors.red,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Mot de passe oublié ?",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                width: 400,
                height: 70,
                child: ElevatedButton.icon(
                  onPressed: () {
                    var ctrl = ref.read(loginCtrlProvider.notifier);
                    ctrl.soumettreFormulaire();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 28, 81, 104),
                  ),
                  label: Text(
                  state.isLoading==true? "Chargement..." : "Se connecter",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 70,
                // color: Colors.red,
                margin: EdgeInsets.only(top: 50),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Inscription()),
                    );*/
                    },
                    child: Text(
                      "Créer un compte",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
