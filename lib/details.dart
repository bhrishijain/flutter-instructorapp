import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instructorapp/insructordetailsmodel.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class InstructorDetails extends StatefulWidget {
  final Instructor selectedInstructor;

  InstructorDetails({this.selectedInstructor});

  @override
  _InstructorDetailsState createState() => _InstructorDetailsState();
}

class _InstructorDetailsState extends State<InstructorDetails> {


  @override
  Widget build(BuildContext context) {

    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var selectedInstructor;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenHeight,
            width: screenWidth,
            color: Colors.transparent,
          ),

          Container(
            height: screenHeight - screenHeight/3,
            width: screenWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img7.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          Positioned(
              top: screenHeight - screenHeight /3 - 25.0,
              child: Container(
                padding: EdgeInsets.only(left: 20.0),
                height: screenHeight / 3 + 25.0,
                width: screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25.0),
                    Text(
                      '${widget.selectedInstructor.instuctureName}',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w400,
                      )
                      ,

                    ),
                    SizedBox(height: 7.0),
                    Text(
                      ' Professional Developer',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w100,
                      )
                      ,

                    ),
                    SizedBox(height: 7.0),
                    Row(
                      children : [
                        SmoothStarRating(
                        allowHalfRating: false,
                        starCount: 5,
                        rating: 4.0,
                        size: 15.0,
                        color: Colors.deepOrange,


                      ),
                        Text(
                          '${widget.selectedInstructor.rating}',
                            style: TextStyle(
                              fontSize: 11.0,
                              fontWeight: FontWeight.w100,
                              color: Colors.deepOrange
                            ),
                        ),
                        Text(
                          ' Reviews',
                          style: TextStyle(
                              fontSize: 11.0,
                              fontWeight: FontWeight.w100,
                              color: Colors.black54
                          ),
                        ),


                ]
                    ),

                    SizedBox(height: 5.0,),
                    Text(
                      ' here is big text that help to see profile bigg i wish we live happier here is big text that help to see profile bigg i wish we live happier'
                       ,
                      style: TextStyle(
                          fontSize: 11.0,
                          fontWeight: FontWeight.w100,
                          color: Colors.black38
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Text(
                      ' Read More',
                      style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w200,
                          color: Colors.deepOrange
                      ),
                    ),

                  ],
                ),
             decoration: BoxDecoration(
               color: Colors.white54,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),  topRight: Radius.circular(25.0))
             ),

          )),

          Positioned(
              top: screenHeight - screenHeight / 3 - 45.0,
              right: 25.0,

              child: Hero(
                tag: widget.selectedInstructor.instucturePic,
                 child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        widget.selectedInstructor.instucturePic
                      )
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
          ))



        ],

      ),
    );
  }
}
