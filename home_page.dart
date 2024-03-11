import 'package:flutter/material.dart';
import 'package:translatorapp/log_in.dart';
import 'package:translatorapp/sign_up.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Column(
            children: [
              Center(
                  child: Text(
                    'WELCOME! to MIK translator',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                    'Turning Words Into Bridges',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontStyle: FontStyle.italic),
                  )),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          const Image(
              height: 200,
              width: 200,
              image: AssetImage('assets/images/doctor.png')),
          const SizedBox(
            height: 150,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignUp()));
            },
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade900,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                width: 250,
                child: const Center(
                    child: Text(
                      'Sign up',
                      style: TextStyle(color: Colors.white),
                    ))),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LogIn()));
            },
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade900,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                width: 250,
                child: const Center(
                    child: Text(
                      'Log in',
                      style: TextStyle(color: Colors.white),
                    ))),
          ),
        ],
      ),
    );
  }
}
