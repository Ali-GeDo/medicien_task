import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_task/moduls/moduls.dart';



//profile bulider item with data
Widget profilrBulider(DoctorsData docdata) => Expanded(
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          shape: BoxShape.rectangle,
          boxShadow: const [
            BoxShadow(blurRadius:3, color: Colors.black12, spreadRadius:0.4)
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('${docdata.pic}'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '${docdata.name}',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '${docdata.boi}',
                textAlign: TextAlign.left,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                  children: [
                    Icon(Icons.star,
                    color: Colors.blue,
                    size: 17,),
                    SizedBox(width: 11,),
                    Text(
                      '${docdata.starnums}',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
//picture view build item
Widget picview() => Container(
      height: 150,
      width: 345,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black),
        image: DecorationImage(
          image: AssetImage('images/doc.jpg'),
          //fit: BoxFit.fill,
        ),
      ),
    );

//icons in the top of page
Widget helpingCardBulider({
  required IconData icon,required String name,required String bio
})=> Expanded(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(
                blurRadius: 10,
                color: Colors.black12,
                spreadRadius: 5)
          ],
        ),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 40,
          child: Icon(
            icon,
            size: 30,
            color: Colors.blueAccent,
          ),
        ),
      ),
      SizedBox(
        height: 7,
      ),
      Text(
        name,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        bio,
        textAlign: TextAlign.left,
        maxLines: 2,
        style: TextStyle(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w100,
        ),
      ),
    ],
  ),
);
