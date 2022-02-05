import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';

class aboutPage extends StatelessWidget {
  const aboutPage({Key? key}) : super(key: key);
  final _htmlContent = """
  <div>
    <h1>Business Partner Agreement</h1>
    <ul>
        <li>DEFINITIONS AND INTERPRETATIONS</li>
        <li>NO PARTNERSHIP</li>
        <li>SCOPE OF SERVICE</li>
        <li>COMMISSION AND MANNER OF PAYMENT</li>
        <li>LICENSE</li>
        <li>REPRESENTATIONS AND WARRANTIES</li>
        <li>INTELLECTUAL PROPERTY RIGHTS</li>
        <li>CONFIDENTIAL INFORMATION</li>
        <li>DISCLAIMER</li>
        <li>INDEMNIFICATION</li>
        <li>TERMINATION</li>
        <li>MISCELLANEOUS</li>
        <li>GOVERNING LAW AND JURISDICTION</li>

    </ul>
    <p><strong>The Business Affiliate understands and agrees to the following:</strong>.</p>
    <p>This Business Partner Agreement (hereinafter referred to as “Agreement”) is signed by and between RUDROHOM COMTRADE PRIVATE LIMITED, having its registered office at 4-C Haridas Ji Ki Magri, Hotel Trident Road, Udaipur 313001 (hereinafter referred to as “Rudrohom”) and the individual or entity intending to download, enter into or otherwise use the Agreement (hereinafter referred to as the “Business Affiliate”). Rudrohom and Business Affiliate shall individually be referred to as Party and jointly be referred to as Parties.
RUDROHOM PROVIDES THE ACCESS TO AND SERVICES OF ITS WEBSITE AND MOBILE BASED APPLICATION “JusBid” (“PLATFORM”) SOLELY ON THE TERMS AND CONDITIONS SET FORTH IN THIS AGREEMENT AND ON THE CONDITION THAT BUSINESS AFFILIATE ACCEPTS AND COMPLIES WITH THEM. THE PLATFORM OPERATES ON AN BIDDING MODEL WHEREBY IN ORDER TO ENSURE THE BOOKINGS, THE GUEST IS REQUIRED TO BID FOR THE SAME AND AWAIT A CONFIRMATION ON THE BID FROM THE BUSINESS AFFILIATE. BY CLICKING THE “ACCEPT” BUTTON BELOW, AND/OR BY DOWNLOADING, ENTERING INTO OR OTHERWISE USING THE SERVICES PROVIDED BY THE WEBSITE FOR A “BUSINESS AFFILIATE”, THE BUSINESS AFFILIATE (A) ACCEPTS THIS AGREEMENT AND AGREES THAT BUSINESS AFFILIATE IS LEGALLY BOUND BY ITS TERMS; AND (B) REPRESENTS AND WARRANTS THAT: (I) IF IN CASE OF AN INDIVIDUAL, BUSINESS AFFILIATE IS 18 (EIGHTEEN) YEARS OF AGE OR OLDER; AND (II) BUSINESS AFFILIATE HAS THE RIGHT, POWER AND AUTHORITY TO ENTER INTO THIS AGREEMENT AND BIND BUSINESS AFFILIATE TO THE TERMS SPECIFIED HEREIN. IF BUSINESS AFFILIATE DOES NOT AGREE TO THE TERMS OF THIS AGREEMENT, RUDROHOM WILL NOT AND DOES NOT ENTER INTO A PARTNERSHIP WITH THE BUSINESS AFFILIATE AND BUSINESS AFFILIATE SHALL NOT HAVE ACCESS TO THE SERVICES PROVIDED BY THE WEBSITE JUSBID</p>
 <p><strong>In furtherance to the booking process, the payment terms shall be as follows:</strong>.</p>
 <ol>
  <li>The standard commission rate shall be 18% for the first 24 (Twenty-Four) months from the date of execution of this Agreement. However, the commission rate may vary depending upon the mutual agreement between the Parties.</li>
  <br>
  <p style="text-align:center;">___________________________________________</p>
  <li>After the booking has been accepted by the Business Affiliate/Hotelier, the Business Affiliate/Hotelier cannot cancel the reservation for any reason whatsoever and in the event the Business Affiliate cancels any booking/reservation, it shall be liable to pay a penalty (Double the amount of booking) in accordance with Rudrohom’s company policy.</li>
  <p style="text-align:center;">___________________________________________</p>
  <li>In case of an Instant Booking, the payment will be remitted within 2 (two) working days after checkout of the Guest from the hotel/venue. For purpose of this Agreement, the term “Instant Booking” shall mean a bid made by a Guest with the Business Affiliate within 3 (three) days prior to the check-in date, and the same being accepted by the Business Affiliate.</li>
   <p style="text-align:center;">___________________________________________</p>
  <li>Further, in case of a Future Booking, the payment will be remitted before 2 (Two) working days of the Guest’s check-in in the hotel/venue. For purpose of this Agreement, “Future Booking” shall mean bid made by a Guest with the Business Affiliate at-least 4 (four) days prior to the check-in date, and the same being accepted by the Business Affiliate</li>
   <p style="text-align:center;">___________________________________________</p>
  <li>The invoice shall be generated separately for each booking/reservation.</li>
 <p style="text-align:center;">___________________________________________</p>
  <li>The Business Affiliates/Hoteliers shall raise an invoice with respect to the booking received from the Platform in the name of Rudrohom Comtrade Private Limited, after deducting the appropriate commission as previously decided between the Parties and thereafter adding the GST amount as mentioned in the table below:</li>
  <p style="text-align:center;">___________________________________________</p>
</ol>
<footer>
  <h3>Jusbid<br>
  <p>Copyright © 2022 Rudrohom Comtrade Pvt Ltd. All Rights Reserved.<br>
  <a href="https://www.jusbid.in/">https://www.jusbid.in/</a></p>
</footer>
  </div>
  """;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("About Page"),
            backgroundColor: Colors.red,
            leading: IconButton(icon:Icon(Icons.arrow_back),
              onPressed:() => Navigator.pop(context, false),
            )
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Html(
              data: _htmlContent,
              // Styling with CSS (not real CSS)
              style: {
                'h1': Style(
                    color: Colors.red
                ),
                'p': Style(
                    color: Colors.black87,
                    fontSize: FontSize.medium
                ),
                'ul': Style(
                    margin: EdgeInsets.symmetric(vertical: 20)
                ),
                'footer':Style(
                    textAlign: TextAlign.center,
                    backgroundColor: Colors.red,
                    color: Colors.white
                )
              },
            ),
          ),
        ),
      ),
    );
  }
}
