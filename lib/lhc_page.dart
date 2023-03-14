import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LhcPage extends StatelessWidget {
  final EventTitle = ['Keynote Address','High Tea','Panel Discussion - Women in Engineering','Awards and Closing Ceremony'];
  final EventSubtitle = ["Time - 12:05 PM to 12:55 PM \nLocation - C101, Seminar Block", "Time - 4:20 PM to 4:35 PM \nLocation - 1st Floor, Seminar Block","Time - 4:40 PM to 5:15 PM \nLocation - C101, Seminar Block", "Time - 5:20 PM to 5:30 PM \nLocation - C101, Seminar Block"];
  LhcPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lecture Hall Complex')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: 800.0,
          child: ListView.builder(
            padding: const EdgeInsets.all(5.0),
            itemCount: EventTitle.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 8.0,
                shadowColor: const Color.fromARGB(255, 63, 173, 168),
                child: ListTile(
                  title: Text(EventTitle[index],
                      style: const TextStyle(fontWeight: FontWeight.w700)),
                  leading: Text(
                    (index + 1).toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(EventSubtitle[index]),
                  isThreeLine: true,
                  onTap: () {},
                ),
              );
            },
          ),
        ),
      ),

      /*child:ListView(
          padding: const EdgeInsets.all(5.0),
          children: [
            ListTile(
              title: const Text('Keynote Address'),
              leading: const Text("1."),
              subtitle: const Text("Time - 12:05 PM to 12:55 PM \nLocation - C101, Seminar Block"),
              isThreeLine: true,
              onTap: () {},
            ),
            ListTile(
              title: const Text('High Tea'),
              leading: const Text("2."),
              subtitle: const Text(
                  "Time - 4:20 PM to 4:35 PM \nLocation - 1st Floor, Seminar Block"),
              isThreeLine: true,
              onTap: () {},
            ),
            ListTile(
              title: const Text('Panel Discussion - Women in Engineering'),
              leading: const Text("3."),
              subtitle: const Text(
                  "Time - 4:40 PM to 5:15 PM \nLocation - C101, Seminar Block"),
                  isThreeLine: true,
              onTap: () {},
            ),
            ListTile(
              title: const Text('Awards and Closing Ceremony'),
              leading: const Text("4."),
              subtitle: const Text(
                  "Time - 5:20 PM to 5:30 PM \nLocation - C101, Seminar Block"),
             isThreeLine: true,
              onTap: () {},
            ),
          ],
        )),
      ),*/
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _launchDirectionsUrl();
        },
        backgroundColor: const Color.fromARGB(255, 63, 173, 168),
        splashColor: Colors.yellow,
        label: const Text("Get Directions to LHC"),
        icon: const Icon(
          Icons.arrow_circle_right_outlined,
          size: 40.0,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        elevation: 10.0,
      ),
    );
  }

  Future<void> _launchDirectionsUrl() async {
    Uri url = Uri.parse(
        'https://www.google.com/maps/dir/?api=1&destination=28.545390787728916,77.27304244681496&travelmode=walking');

    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
