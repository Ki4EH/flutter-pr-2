import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LogPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LogPage extends StatelessWidget {
  const LogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(padding: const EdgeInsets.only(left: 8, right: 8 , top: 0, bottom: 40), child:
        Column(children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: Container(child: const Center(child: Text('Автoризация', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(child:
            TextField(decoration: InputDecoration(hintText: 'Логин', fillColor: Color(0xFFf0eff4), filled: true, border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(style: BorderStyle.none, width: 0)
            ), hintStyle: TextStyle(color: Color(0xFF8b8b8e))),

            )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(child:
            TextField(decoration: InputDecoration(hintText: 'Пароль', fillColor: Color(0xFFf0eff4), filled: true, border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(style: BorderStyle.none, width: 0)
            ), hintStyle: TextStyle(color: Color(0xFF8b8b8e))),

            )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row( mainAxisAlignment: MainAxisAlignment.center,
                children:[ SizedBox(height: 8, width: 50, child: Checkbox(fillColor: MaterialStateProperty.resolveWith((states)
                  {if (states.contains(MaterialState.dragged)) {return Color(0xFF8b8b8e);} return null; }), side: const BorderSide(color: Color(0xFF8b8b8e), width: 1.7,),
                      value: false, onChanged:(bool? value) {}, checkColor: Color(0xFF8b8b8e),),),
                  const Text('Запомнить меня', style: TextStyle(fontSize: 16, color: Color(0xFF8b8b8e),),),]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(height: 50,width: 1000,child: ElevatedButton(onPressed: () {  },
            child: Text('Войти', style: TextStyle(fontSize: 20, color: Colors.white),),
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0b6bfe), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))))),),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(height: 50,width: 1000,child: ElevatedButton(onPressed: () {  },
                child: Text('Регистрация', style: TextStyle(fontSize: 20, color: Colors.cyan),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: Colors.cyan))))),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(child: InkWell(child: Text('Восстановить пароль', style: TextStyle(fontSize: 17, color: Color(0xFF8b8b8e)),),),),
          )
        ],
        ),),
    );
  }
}


