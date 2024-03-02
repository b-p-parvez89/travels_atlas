import 'package:flutter/material.dart';

class ImageCheck extends StatefulWidget {
  const ImageCheck({super.key});

  @override
  State<ImageCheck> createState() => _ImageCheckState();
}

class _ImageCheckState extends State<ImageCheck> {
  List image=[
'image/grupe.png',
'image/option.png',
'image/optionn.png',
'image/tr1.png',

  ];
  int imageIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0),
        child: Column(
          
          children: [
          Container(height: MediaQuery.of(context).size.height/2,
          width: double.infinity,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image[imageIndex]), fit: BoxFit.fill)),
          child:Align(
            alignment: Alignment.bottomCenter,
            //bottom: 12,
            child: Container(
              height: 80,
             
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
              itemCount: image.length,
              itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      imageIndex=index;
                    });
                  },
                  child: Container(height: 80,width: 80,
                decoration: BoxDecoration(
                  border:Border.all(color: index==imageIndex?Colors.deepOrange:Colors.white, width: 3),
                   image: DecorationImage(image: AssetImage(image[index]), fit:BoxFit.cover)),
                )),
              );
                      })),
            ),)
          )
        ],),
      ),
    );
  }
}