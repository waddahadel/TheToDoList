import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 20
          ),
          child: ListView(
          children: [
             AppBar(
                title: Text('Getting Started!'),
                backgroundColor: Colors.transparent,
                bottomOpacity: 0,
                elevation: 0,
                foregroundColor: Colors.green,
              ),
            SizedBox(height: 15,),
            Text('Please Enter Your Task and Task Describtion in the fields below in order to add them to your To-Do-List!',
            style: TextStyle(
              height: 1.5,
            ),),
            SizedBox(height: 20,),
            Taskinputwidget(),
            SizedBox(height: 12,),
            taskdescwidget(),

              ],
            ),
          ),
        ),
      );
  }
}

class taskdescwidget extends StatelessWidget {
  const taskdescwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 22,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFFefeded),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text( 'Task Describtion:',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            onSubmitted: (value){
              print('Input Value:$value');
            },
            decoration: InputDecoration(
              hintText: 'Take the dog for a walk.'
            ),
          )
        ],
      ),
    );
  }
}

class Taskinputwidget extends StatelessWidget {
  const Taskinputwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 22,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFFefeded),
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text( 'Task:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Dog Walk.'
              ),
            )
          ],
        ),
        );
  }
}
