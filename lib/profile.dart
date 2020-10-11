import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gedaratamacust/custom_list_tile.dart';

class ProfilePage extends StatefulWidget{
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{

  bool turnOnNotification = false;
  bool turnOnLocation =false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0 , horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Profile" , style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 20.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(50.0),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5.0,
                          offset: Offset(5.0, 8.0),
                          color: Colors.black
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage("assets/image/profile.png" ),
                        fit: BoxFit.cover,
                    ),
                  ),
                  ),
                  SizedBox(width: 20.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(" Sanduni Iresha", style: TextStyle(fontSize: 16.0),),
                      SizedBox(height: 10.0,),
                      Text("+94719467207", style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 20.0,),
                      Container(
                        height: 25.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.green
                          ),
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Center(child: Text("Edit" , style: TextStyle(color: Colors.white , fontSize: 16.0),),),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30.0,),
              Text("Account" , style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 20.0,),
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: <Widget>[
                      CustomListTile(
                        icon: Icons.location_on,
                        text: "Location",
                      ),


                      Divider(height: 10.0, color: Colors.grey,),

                      CustomListTile(
                        icon: Icons.visibility,
                        text: "Change Password",
                      ),

                      Divider(height: 10.0, color: Colors.grey,),

                      CustomListTile(
                        icon: Icons.shopping_cart,
                        text: "Delivering",
                      ),

                      Divider(height: 10.0, color: Colors.grey,),

                      CustomListTile(
                        icon: Icons.payment,
                        text: "Payment",
                      ),

                      Divider(height: 10.0, color: Colors.grey,),


                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              Text("Notifications" , style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),),

              Card(
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("App Notification",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),),

                          Switch(
                            value: turnOnNotification,
                            onChanged: (bool value){
                              setState(() {
                                turnOnNotification= value;
                              });

                            },
                          ),
                        ],
                      ),
                      Divider(height: 10.0, color: Colors.grey,),

                      Row(
                        children: <Widget>[
                          Text("Location Tracking",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),),

                          Switch(
                            value: turnOnLocation,
                            onChanged: (bool value){
                              setState(() {
                                turnOnLocation= value;
                              });

                            },
                          ),
                        ],
                      ),
                      Divider(height: 10.0, color: Colors.grey,),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );

  }
}