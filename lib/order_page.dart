import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order_card.dart';

class OrderPage extends StatefulWidget{
  @override
  _orderPageState createState() => _orderPageState();
}

class _orderPageState extends State<OrderPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Food Cart" , style: TextStyle(color: Colors.green),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
             children: <Widget>[
               OrderCard(),
               OrderCard(),
               OrderCard(),
               OrderCard(),
               OrderCard(),
             ],
           ),

          _buildTotalContainer(),

        ],
      ),
    );
  }
  Widget _buildTotalContainer(){
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Cart Total", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold , color: Colors.grey),),
              Text("23.0",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold , color: Colors.black)),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Discount", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold , color: Colors.grey),),
              Text("3.0",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold , color: Colors.black)),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Tax", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold , color: Colors.grey),),
              Text("0.5",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold , color: Colors.black)),
            ],
          ),
          Divider(height: 20.0, color: Colors.grey,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Sub Total", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold , color: Colors.grey),),
              Text("26.5",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold , color: Colors.black)),
            ],
          ),
          SizedBox(height: 20.0,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Center(
              child: Text(
                "Proceed to checkout",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}