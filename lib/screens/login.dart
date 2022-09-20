import 'package:flutter/material.dart';
import 'package:myapp/screens/search.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome To Log in Screen"),
        backgroundColor: Colors.blue.shade400,
        actions: [Icon(Icons.login)],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://images.freeimages.com/images/previews/1f3/gradiant-texture-free-photos-1473911.jpg"))),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                      label: Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black45,
                      ),
                      suffixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          gapPadding: 50),
                      contentPadding: EdgeInsets.symmetric(vertical: 20),
                      hintText: "Enter Your Email Here !"),
                ),
                Divider(
                  height: 50,
                ),
                TextField(
                  obscureText: isObsecure,
                  decoration: InputDecoration(
                    label: Text(
                      "Password",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    prefixIcon: Icon(
                      Icons.password,
                      color: Colors.black45,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObsecure = !isObsecure;
                          });
                        },
                        icon: Icon(isObsecure
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        gapPadding: 50),
                    contentPadding: EdgeInsets.symmetric(vertical: 20),
                    hintText: "Enter Your Password Here !",
                  ),
                ),
                Divider(
                  height: 50,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Search();
                    }));
                  },
                  icon: Icon(Icons.navigate_next),
                  label: Text("Go To Search Screen"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
