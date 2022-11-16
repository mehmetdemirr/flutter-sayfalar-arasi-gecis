import 'package:flutter/material.dart';
import 'package:sayfalar_arasi_gecis/SayfaA.dart';

class SayfaB extends StatefulWidget {

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Sayfa B"),
        ),
        body:Column(
          children: [
            Row(
              children: [
                TextButton(
                    onPressed:(){
                      //Navigator.pop(context);
                      // Navigator.push(context,MaterialPageRoute(builder: (context)=> MyHomePage(title: "Anasayfa")));
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                    child: Text("Anasayfaya git")
                ),
              ],
            )
          ],
        )
    );
  }
}
