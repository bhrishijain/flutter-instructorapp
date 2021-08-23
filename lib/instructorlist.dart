import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instructorapp/details.dart';
import 'package:instructorapp/insructordetailsmodel.dart';

class ListInstructor extends StatefulWidget {
  @override
  _ListInstructorState createState() => _ListInstructorState();
}

class _ListInstructorState extends State<ListInstructor> {

  final instructor = allInstructors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF6ED),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             IconButton(
                 icon: Icon(Icons.arrow_back),
                 onPressed: null),
              IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: null)
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              children: [
                Text(
                  "Bhumika Chaplot",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.keyboard_arrow_down),
                    onPressed: null),
              ],
            ),


          ),

          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              children: [
                Text(
                  "Best developer in india!!",
                  style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.w300,
                    color: Colors.black38

                  ),
                ),

              ],
            ),


          ),
         Padding(
           padding: EdgeInsets.only(left: 15.0, right: 15.0),
           child: TextField(
             decoration: InputDecoration(
               prefixIcon: IconButton(
                 icon: Icon(Icons.search),
                 onPressed: null,
               ),
               hintText: 'Search',
               hintStyle: TextStyle(
                   fontSize: 15.0,
                   fontWeight: FontWeight.w300,

               ),
               suffixIcon: IconButton(
                 icon: Icon(Icons.filter_list),
             onPressed: null,
           ),
             ),
           ),

         ),

          Container(
            height: MediaQuery.of(context).size.height - 200.0,
            child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              childAspectRatio: 0.67,
              shrinkWrap: true,
              primary: false,
              children: [
               ...instructor.map((e) {
                  return buildInstructorGrid(e) ;

                }).toList()

              ],
            ),
          ),

        ],
      ),

    );
  }

  buildInstructorGrid(Instructor instructor){
    return GestureDetector(
     onTap: (
         ){
       Navigator.of(context).push(MaterialPageRoute(
           builder: (context)=> InstructorDetails(selectedInstructor: instructor ,)
       ));
     },

      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Stack(
          children: [
            Container(
              height: 150.0,
            color: Colors.transparent,
            ),
            Positioned(
                left: 30.0,
                top: 65.0,
                child: Container(
                  height: 30.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    boxShadow:[
                      BoxShadow(
                      blurRadius: 7.0,
                      color: Colors.grey.withOpacity(0.75),
                      offset: Offset(5,20),
                        spreadRadius: 12.0,

                    )]

                  ),

            )),

            Positioned(
                left: 12.0,
                top: 15.0,
                child: Hero(
                 tag: instructor.instucturePic,
                  child: Container(
                    height: 100.0,
                    width: 85.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      image: DecorationImage(
                        image: AssetImage(instructor.instucturePic),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
            )),

            Positioned(
                left: 20.0,
                top: 135.0,
                child: Column(
                  children: [
                    Text(instructor.instuctureName,
                      style: TextStyle(
                        fontSize: 11.0,
                        fontWeight: FontWeight.bold
                      ),

                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.grey.withOpacity(0.5),
                          size: 15.0,
                        ),
                        SizedBox(width: 3.0),

                        Text(instructor.rating,
                        style:TextStyle(
                          fontSize: 15.0 ,
                        ),
                        ),
                      ],
                    )
                  ],
            ))


          ],
        ),
      ),
    );
  }

}
