import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10.0,top: 20.0),
          color: Colors.deepPurple,
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: Row(children: <Widget>[
                  Expanded(
                      child: Text("SpiceJet",
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 35.0,
                              decoration: TextDecoration.none,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w900,
                              color: Colors.white
                          ))),
                  Expanded(
                      child: Text("from mumbai to bangalore",
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20.0,
                              decoration: TextDecoration.none,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w300,
                              color: Colors.white
                          )))
                ])
              )
              ,
              Container(
                padding: EdgeInsets.all(10.0),
                child:Row(children: <Widget>[
                  Expanded(
                      child: Text("Air India",
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 35.0,
                              decoration: TextDecoration.none,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w900,
                              color: Colors.white
                          ))),
                  Expanded(
                      child: Text("from jaipur to goa",
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20.0,
                              decoration: TextDecoration.none,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w300,
                              color: Colors.white
                          )))
                ]) 
              ),
              FlightImageAsset()
              
            ]
          )

          ),
    );
  }
}

class FlightImageAsset extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = new AssetImage("images/book-flight.png");
    Image image = new Image(image: assetImage);
    return Container(
                    child: image,
                    );
  }
}
