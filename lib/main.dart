import 'package:flutter/material.dart';

void main (){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: homePage(),


    );
  }
}
class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      body: Container(
          height: height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/image/tof.jpg'
                  ))
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.green.withOpacity(0.5),
                          Colors.yellow.withOpacity(0.5),
                          Colors.red.withOpacity(0.5),
                        ]
                    )
                ),
                height: height / 2,
              ),
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                    ),
                  )
              )
            ],
          )

      ),
      bottomNavigationBar: BottomAppBar(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme
                  .of(context)
                  .primaryColor,
              foregroundColor: Colors.white,
            ),
            child: Text("Clique",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            },
          )
      ),
    );
  }
}
  class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
  return Scaffold(
    appBar: AppBar(),
      body: Container(
          child: Row(
            children: [
              Container(
                child: Text(
                  "Politique"
                      "Nouveau Code Electoral: un casse tête"
                      "30/04/2023",
                ),
                height: height,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/image/sstof.jpg'
                        ))
                ),
              ),
              Container(
                child: Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere,"
  " magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.Aenean nec lorem. In porttitor. Donec laoreet nonummy augue.Suspendisse dui purus, scelerisque at, vulputate vitae, pretium mattis, nunc. Mauris eget neque at sem venenatis eleifend. Ut nonummy.Fusce aliquet pede non pede. Suspendisse dapibus lorem pellentesque magna. Integer nulla.Donec blandit feugiat ligula. Donec hendrerit, felis et imperdiet euismod, purus ipsum pretium metus, in lacinia nulla nisl eget sapien. Donec ut est in lectus consequat consequat.Etiam eget dui. Aliquam erat volutpat. Sed at lorem in nunc porta tristique."),


              )
            ],
          )
    )






  );
  }
  }

