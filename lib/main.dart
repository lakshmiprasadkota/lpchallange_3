import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'picsfile.dart';

void main() => runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: HomePage()
    )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu),
        title: Text("Hai Lakshmi" ,style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,color: Colors.white)),

      ),
      body: SafeArea(
        child: Container(

          child: Column(children: <Widget>[

              Container(
                child: Stack(
                  children: <Widget>[


                  Container(


                    child:  Icon(Icons.cloud ,size:40 , color: Colors.white,),
                     ),
                    Container(
                      padding: EdgeInsets.fromLTRB(40, 10, 0,0),

                      child: Text( "15 *" , style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white)),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(100, 25, 180,0),

                      child: Text( " stay"
                          " warm"
                          "  and "
                          "  dry " , style: TextStyle(fontSize:8, color: Colors.white)),
                    )
                  ],

                ),

              ),
              SizedBox(height: 20),

             Text(" What Would you like to do today ?" ,style: TextStyle(fontSize:20, color: Colors.white),),
              SizedBox(height: 30),

              Expanded(
                  child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemCount:picsitems.length ,

                    itemBuilder: (BuildContext context, int index)
                    {
                      return GestureDetector(

                        child: Column(
                          children: [
                            Container(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage: NetworkImage(picsitems[index].pic),
                                maxRadius: 80,
                              ),//circleavatar
                            ),//listtile

                          ),//container
                            Container(
                                alignment: FractionalOffset.bottomCenter,
                                padding: EdgeInsets.fromLTRB(5,2.5,5, 2.5),
                                margin: EdgeInsets.fromLTRB(5,5,25,5),
                                color:Colors.black,child: Text(picsitems[index].picName,style: TextStyle(color: Colors.white),)
                            ),

                          ],
                        ),

                      );
                    },
                  ),
              ),
            ],
          ),
      ),

    ),
    );
  }
}
