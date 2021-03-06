import 'package:booking_bus_app/components/modules.dart';
import 'package:intl/intl.dart';
import 'Person.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController fromController = new TextEditingController();
  TextEditingController toController = new TextEditingController();
  int bal = getbal();

  final formats = DateFormat("yyyy-MM-dd");
  DateTime journeys;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        // body: CustomScrollView(
        // slivers: <Widget>[
        //   SliverGlueList(
        //     data: List(
        //       3
        //     ),
        //     header: Text("Preferred Bus"),

        //   ),
        //],
        // ),

        body: ListView(
          padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0),
          children: <Widget>[
            Container(
              height: 50,
              child: Card(
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.account_balance_wallet,
                    ),
                    Text("Your balance is:                                                       "),
                    Text("Rs. $bal"),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 2.0,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    WidgetComponent.formField(
                      borders: InputBorder.none,
                      label: "From",
                      prefix: Icon(Icons.location_city),
                      controllers: fromController,
                    ),
                    WidgetComponent.formField(
                      borders: InputBorder.none,
                      label: "To",
                      prefix: Icon(Icons.location_city),
                      controllers: toController,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            // Card(
            //     elevation: 2.0,
            //     child: Padding(
            //       padding: EdgeInsets.all(8.0),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: <Widget>[
            //           Text("Journey Date"),
            //           DateTimeField(
            //             format: formats,
            //             onShowPicker: (context, currentValue) {
            //               return showDatePicker(
            //                   context: context,
            //                   initialDate: currentValue ?? DateTime.now(),
            //                   firstDate: DateTime(1970),
            //                   lastDate: DateTime(2119));
            //             },
            //             onChanged: (dates) {
            //               setState(() {
            //                 journeys = dates;
            //               });
            //             },
            //             decoration: InputDecoration(
            //                 border: InputBorder.none,
            //                 prefixIcon: Icon(Icons.date_range),
            //                 suffixIcon: FlatButton(
            //                     onPressed: () {
            //                       setState(() {
            //                         journeys = DateTime.now();
            //                       });
            //                     },
            //                     child: Text("Today"))),
            //           ),
            //         ],
            //       ),
            //     )),
            Row(
              children: <Widget>[
                Expanded(
                  child: WidgetComponent.buttons("Search Bus",
                      textColor: Colors.white,
                      bolds: FontWeight.bold,
                      elevas: 2.0,
                      radius: 20.0,
                      padding: EdgeInsets.only(top: 8.0),
                      coloring: Colours.magenta, onPressed: () {
                    /*Navigator.pushReplacementNamed(context, "dashboard");*/
                  }),
                )
              ],
            ),
            Card(
              // margin: EdgeInsets.all(30),
              child: Text(
                "Prefered Bus",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
              ),
            ),
            // Text(
            //   "Favorite Bus",
            //   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
            // ),
          ],
        ),
        // ],
      ),
    );
    // ),),);
  }
}
