import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController inviteCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.teal.shade500,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Column(
            children: [
              const Expanded(
                child: Text(
                  "Continue with Invite Code",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    controller: inviteCodeController,
                    style: const TextStyle(
                      color: Colors.white,
                      letterSpacing: 0.8,
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      label: const Text(
                        "+91 7559074583",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.teal.shade500),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 4),
                      ),
                    ),
                  ),
                ),
              ),
              const Expanded(
                child: Text(
                  "We will send an OTP to verify this\nnumber",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, letterSpacing: 2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 150),
                child: ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(primary: Colors.teal.shade500),
                  child: const Text("Continue"),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.blueGrey.shade700,
                      height: 70,
                      endIndent: 20,
                      indent: 20,
                    ),
                  ),
                  const Text(
                    "Or",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.blueGrey.shade700,
                      height: 70,
                      endIndent: 20,
                      indent: 20,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.teal.shade500),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/google.png",
                          scale: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Continue with Google",
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
