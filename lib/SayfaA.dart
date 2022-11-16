import 'package:flutter/material.dart';
import 'package:sayfalar_arasi_gecis/SayfaB.dart';
import 'package:sayfalar_arasi_gecis/main.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({Key? key}) : super(key: key);

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Sayfa A"),
        ),
        body:Column(
          children: [
            Row(
              children: [
                TextButton(
                    onPressed:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => SayfaB() ));
                    },
                    child: Text("Sayfa B geçiş yap")
                ),
                TextButton(
                    onPressed:(){
                      //Navigator.pop(context);
                     // Navigator.push(context,MaterialPageRoute(builder: (context)=> MyHomePage(title: "Anasayfa")));
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                    child: Text("Geldiğin sayfaya geri dön")
                ),
              ],
            )
          ],
        )
    );
  }
}
