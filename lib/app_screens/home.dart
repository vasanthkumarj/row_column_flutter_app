import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10.0,top: 150.0),
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
              FlightImageAsset(),
              FlightButtonAsset()
              
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

class FlightButtonAsset extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
                     margin: EdgeInsets.only(top: 100.0),
                     width: 250.0,
                     height: 50.0,
                     child: RaisedButton(
                       child: Text(
                           "Book the flight",
                            style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w600
                                            ),
                                   ),
                         color: Colors.deepOrange,
                         elevation: 6.0,
                         onPressed: () => showText(context)

                                        ),
                     );
  }

  void showText(BuildContext context)
  {
    var alertDialogue = AlertDialog(
      title: Text("Flight booked successfully"),
      content: Text("Have a safe journey"),
    );

    showDialog(
               context: context,
               builder: (BuildContext context) => alertDialogue

              );
  }
}
