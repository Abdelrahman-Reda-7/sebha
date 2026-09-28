import 'package:flutter/material.dart';

class Class extends StatefulWidget {
  const Class({super.key});

  @override
  State<Class> createState() => _ClassState();
}

class _ClassState extends State<Class> {
  int counter=0;
  String zkr="سبحان الله";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("السبحة"),
        centerTitle: true,
      ),

      body: Stack(
        children: [
          Image.asset('assets/WhatsApp Image 2026-09-28 at 5.47.17 PM.jpeg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  zkr,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 6),

                Text(
                  "$counter",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 6),

                ElevatedButton(
                  onPressed: () {

                    counter++;
                    setState(() {

                      if (counter == 33) {
                        counter = 0;

                        switch (zkr) {
                          case "سبحان الله":
                            zkr = "الحمد لله";
                            break;

                          case "الحمد لله":
                            zkr = "الله أكبر";
                            break;

                          default:
                            zkr = "سبحان الله";
                        }
                      }



                    });
                  },
                  child: Text("سبح",),

                ),

                SizedBox(height: 6),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter = 0;
                      zkr = "سبحان الله";
                    });
                  },
                  child: Text("إعادة"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}