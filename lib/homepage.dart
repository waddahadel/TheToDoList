import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/taskpage.dart';
import 'taskcard.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(

        backgroundColor: Colors.green,
        label: Text('Add a new task'),
        icon: Icon(CupertinoIcons.add),
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => TaskPage()));
        },
      ),
      body: SafeArea(
            child : Container(
              width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 24
            ),
             child : Center(
               child : Column(
                children: [
                  Text('The-To-Do-List',
                  style: GoogleFonts.poiretOne(
                    color: Colors.green,
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                  ),),
                  SizedBox(height: 25,),
                  Expanded(
                    child: ListView(
                      children: [TaskCard(
                        title: 'Yes Sir',
                      ),
                      TaskCard(),
                        TaskCard(),
                        TaskCard(),
                        TaskCard()
                      ]
                    ),
                  ),
                  

                ],
              ),
             ),
            ),
          ),
        );
  }
}

