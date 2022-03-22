import 'package:flutter/material.dart';
import 'package:invite_code/View/Login%20Screen/loginscreen.dart';

class InvitationScreen extends StatefulWidget {
  const InvitationScreen({Key? key}) : super(key: key);

  @override
  State<InvitationScreen> createState() => _InvitationScreenState();
}

class _InvitationScreenState extends State<InvitationScreen> {
  TextEditingController inviteCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
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
                      "Add Invite Code",
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
            Padding(
              padding: const EdgeInsets.only(bottom: 150),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => LoginScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.teal.shade500),
                child: const Text("Continue"),
              ),
            ),
            Expanded(
              child: Column(
                children: const [
                  Text(
                    "No Invite Code?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "If you want an invite code and get early access, \nPlease fill out this.form",
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
