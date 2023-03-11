import 'package:flutter/material.dart';

class notePadScreen extends StatefulWidget {
  const notePadScreen({Key? key}) : super(key: key);

  @override
  _notePadScreenState createState() => _notePadScreenState();
}

class _notePadScreenState extends State<notePadScreen> {
  List<String> title =["today work", "tomorow Work "," what todo "];
  List<String> subtitle=["march 26,2022 12:10pm",
    "march 26,2022 12:10pm",
    "march 26,2022 12:10pm",
  ];
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      floatingActionButton:FloatingActionButton(

        onPressed: (){},
        backgroundColor: Colors.yellow,
        child:Icon(Icons.add,color: Colors.black,size: 30),),
      body: Padding(
        padding: const EdgeInsets.only(top: 100,right: 20,left: 20, bottom: 20 ) ,
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text("NotePad",style: TextStyle(
              fontSize: 40,
             // fontWeight: FontWeight.bold,
            ),),
            SizedBox(
             height: 50,
           ),
           TextFormField(
             
             decoration:   InputDecoration(
               contentPadding: const EdgeInsets.all(10),
               hintText: "search Note",
               prefixIcon: const Icon(Icons.search),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(30)
               )
             ),
           ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: title.length,
                itemBuilder: (context, index){
                  return  Card(
                    color:index%2==0? Color(0xffFFFB82) :Color(0xff82FFB0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      title: Text("${title[index]}"),
                      subtitle: Text("${subtitle[index]}"),

                    ),
                  );
                }
            ),
          ),

          ],
        ),
      ),
    );
  }
}
