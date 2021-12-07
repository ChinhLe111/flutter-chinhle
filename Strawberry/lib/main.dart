import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      child : Center(
        child: Column(
          children : [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment : CrossAxisAlignment.center,
              children: [
                Text(
                  " ",
                  textDirection: TextDirection.ltr,
                ),
                Text(
                  " ",
                  textDirection: TextDirection.ltr,
                ),
                Container(

                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 5.0,
                        color: Colors.pink,
                      ),
                    ),
                    width: 500,
                    height: 100,
                    alignment: Alignment.center,

                    child: Text("Strawberry Pavlova",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),)
                ),
                Text(
                  " ",
                  textDirection: TextDirection.ltr,
                ),
                Container(

                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 5.0,
                        color: Colors.pink,
                      ),
                    ),
                    width: 500,
                    height: 150,
                    alignment: Alignment.center,

                    child: Text("Pavlova is a meringue-based dessert named after the Russian ballerine Anna Pavlova."
                        " Pavlova featues a crisp crust and soft, light inside, topped with fruit and whipped cream.",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 0.0,
                        wordSpacing: 0.0,
                      ),)
                ),
                Text(
                  " ",
                  textDirection: TextDirection.ltr,
                ),
                Container(

                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5.0,
                      color: Colors.pink,
                    ),
                  ),
                  width: 500,
                  height: 60,
                  alignment: Alignment.center,

                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      textDirection: TextDirection.ltr,
                      children :[
                        Icon(Icons.star,
                          textDirection: TextDirection.ltr,
                          color: Colors.yellow,
                          size: 40,
                        ),
                        Icon(Icons.star,
                          textDirection: TextDirection.ltr,
                          color: Colors.yellow,
                          size: 40,
                        ),
                        Icon(Icons.star,
                          textDirection: TextDirection.ltr,
                          color: Colors.yellow,
                          size: 40,
                        ),
                        Icon(Icons.star,
                          textDirection: TextDirection.ltr,
                          color: Colors.yellow,
                          size: 40,
                        ),
                        Icon(Icons.star,
                          textDirection: TextDirection.ltr,
                          color: Colors.yellow,
                          size: 40,
                        ),
                        Text("170 Reviews",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 0.0,
                            wordSpacing: 0.0,
                          ),
                        )

                      ]

                  ),
                ),
                Text(
                  " ",
                  textDirection: TextDirection.ltr,
                ),
                Container(

                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 5.0,
                        color: Colors.pink,
                      ),
                    ),
                    width: 500,
                    height: 130,
                    alignment: Alignment.center,

                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        textDirection: TextDirection.ltr,
                        children :[
                          Column(
                            children: [
                              Icon(Icons.article,
                                textDirection: TextDirection.ltr,
                                color: Colors.green,
                                size: 50,),
                              Text("PREP:",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color:Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                              Text("25 min",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color:Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.access_alarms,
                                textDirection: TextDirection.ltr,
                                color: Colors.green,
                                size: 50,
                              ),
                              Text("COOK:",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color:Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                              Text("1 hr",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color:Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.accessibility,
                                textDirection: TextDirection.ltr,
                                color: Colors.green,
                                size: 50,),
                              Text("FEEDS:",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color:Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                              Text("4 - 6",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color:Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ]
                    )
                ),
              ],
            )


          ],
        ),
      ),
    );
  }

}