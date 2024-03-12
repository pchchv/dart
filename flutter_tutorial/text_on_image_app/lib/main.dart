import 'package:flutter/material.dart'; 
  
void main() { 
  runApp(const MyApp()); 
} 
  
class MyApp extends StatelessWidget { 
  const MyApp({super.key}); 
  
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(primarySwatch: Colors.green), 
      home: Scaffold( 
  appBar: AppBar( 
    title: const Text("Text Over Image"), 
  ), 
  body: Center( 
    child: Stack( 
      children: [ 
        Container( 
          alignment: Alignment.center, 
          child: Image.asset( 
            'assets/images/image.jpg',
            width: double.infinity, 
            fit: BoxFit.cover, 
          ), 
        ), 
        Container( 
            alignment: Alignment.center, 
            child: const Text( 
              'Text Over the Image', 
              style: TextStyle(color: Colors.white, 
                  fontWeight: FontWeight.bold, 
                  fontSize: 24.0), 
            )), 
      ], 
    ), 
  ), 
) , 
    ); 
  } 
}