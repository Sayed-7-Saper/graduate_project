import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class data {
  IconData icon; // String image ;
  String  text;
  data({ required this.icon, required this.text} ); //required this.image
}
List<data> MyItem=[
  data(icon:Icons.family_restroom_sharp, text:' Add Group Family'), // image: 'assets/image/AH.jpg',
  data(icon:Icons.group_add_sharp, text:' New Group '),
  data(icon:Icons.fingerprint_sharp, text:'Find Account '),
  data(icon:Icons.face_retouching_natural,text: ' Add Face Recognition'),
  data(icon:Icons.directions_car_sharp,text: ' Car Delivery Service '),
  data(icon:Icons.location_on_sharp,text: ' Find Location'),
  data(icon:Icons.airplanemode_active_sharp,text: 'sleep '),
  data(icon:Icons.save_alt_sharp,text: 'Items Saved'),


];


class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height:90 ,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection : Axis.horizontal,
                        itemBuilder: (context,index)=> Column(
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: AssetImage('image/SSH.jpg'), //MyItem[index].image
                            ),
                            SizedBox(height: 5.0,),
                            Text('New..',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),
                              maxLines: 1,overflow: TextOverflow.ellipsis,),
                          ],
                        ),
                        separatorBuilder: (context,index)=> SizedBox(width: 15.0,),
                        itemCount: 15,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15.0,),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: MyItem.length,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          IconButton(icon:Icon( MyItem[index].icon,size: 50.0,), onPressed: (){}),
                          SizedBox(width: 30.0,),
                          Text(MyItem[index].text,
                            style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.bold ),
                            maxLines: 1,overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                    );
                  }
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("home page");
        },
        child: Icon(Icons.settings),
      ),
    );
  }
}