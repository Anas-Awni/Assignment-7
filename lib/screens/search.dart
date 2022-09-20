import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome To Search Screen"),
        backgroundColor: Colors.cyan.shade300,
        actions: [Icon(Icons.search)],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
              "https://st.depositphotos.com/1022138/59810/i/600/depositphotos_598103146-stock-photo-tender-pastel-shades-background-searching.jpg"),
        )),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                      label: Text(
                        "Search",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: Colors.black45,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          gapPadding: 50),
                      contentPadding: EdgeInsets.symmetric(vertical: 20),
                      hintText: "Search Here !"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
