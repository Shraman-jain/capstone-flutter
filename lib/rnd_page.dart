import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RndPage extends StatelessWidget {
  
  final EventTitle = ['Welcome Tea/ Coffee','Inauguration','Artificial Intelligence (Speaker Track)','Artificial Intelligence (Poster Track)','Sustainability (Speaker Track)',
  'Technology as a Public Good	 (Poster Track)','Healthcare (Speaker Track)','Core Research (Poster Track)','Design (Speaker Track)','Cyberphysical Systems	 (Poster Track)',
  'Lunch','Artificial Intelligence (Speaker Track)','Artificial Intelligence (Poster Track)','Technology as a Public Good (Speaker Track)',
  'Sustainability	 (Poster Track)','Core Research (Speaker Track)','Healthcare (Poster Track)','Cyberphysical Systems (Speaker Track)','Design	 (Poster Track)'];
  
  final EventSubtitle = ["Time - 9:00 AM to 9:15 AM \nLocation - Ground Floor, RnD Block","Time - 9:15 AM to	9:25 AM \nLocation - A007, Ground Floor, RnD Block",
  "Time - 9:35 AM to 11:55 AM \nLocation - A007, RnD Block","Time - 9:35 AM to 11:55 AM \nLocation - 5th Floor, RnD Block","Time - 9:35 AM to 11:55 AM \nLocation - A006, RnD Block"
  , "Time - 9:35 AM to 11:55 AM \nLocation - B-Wing, 6th Floor, RnD Block", "Time - 9:35 AM to 11:55 AM \nLocation - A106, RnD Block","Time - 9:35 AM to 11:55 AM \nLocation - B-Wing, 3rd and 4th Floor, RnD Block",
  "Time - 9:35 AM to 11:55 AM \nLocation - B105, RnD Block","Time - 9:35 AM to 11:55 AM \nLocation - A-Wing, 6th Floor, RnD Block",
  "Time - 1:00 PM to	2:00 PM \nLocation - Ground Floor, RnD Block","Time - 2:05 PM to	4:15 PM \nLocation - A007, RnD Block","Time - 2:05 PM to	4:15 PM \nLocation - 5th Floor, RnD Block","Time - 2:05 PM to	4:15 PM \nLocation - A006, RnD Block","Time - 2:05 PM to	4:15 PM \nLocation - 2nd Floor, RnD Block",
  "Time - 2:05 PM to	4:15 PM \nLocation - A106, RnD Block","Time - 2:05 PM to	4:15 PM \nLocation - 3rd and 4th Floor, RnD Block","Time - 2:05 PM to	4:15 PM \nLocation - B105, RnD Block",
  "Time - 2:05 PM to	4:15 PM \nLocation - A-Wing, 4th Floor, RnD Block"];
  RndPage({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RND')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: 670.0,
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
          /*child: ListView(
            padding: const EdgeInsets.all(5.0),
            children: [
              ListTile(
                title: const Text('Welcome Tea/ Coffee'),
                leading: const Text("1."),
                subtitle: const Text(
                    "Time - 9:00 AM to 9:15 AM \nLocation - Ground Floor, RnD Block"),
                isThreeLine: true,
                onTap: () {},
                
              ),
              ListTile(
                title: const Text('Inauguration'),
                leading: const Text("2."),
                subtitle: const Text(
                    "Time - 9:15 AM to	9:25 AM \nLocation - A007, Ground Floor, RnD Block"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Artificial Intelligence (Speaker Track)'),
                leading: const Text("3."),
                subtitle: const Text(
                    "Time - 9:35 AM to 11:55 AM \nLocation - A007, RnD Block"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Artificial Intelligence (Poster Track)'),
                leading: const Text("4."),
                subtitle: const Text(
                    "Time - 9:35 AM to 11:55 AM \nLocation - 5th Floor, RnD Block"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Sustainability (Speaker Track)'),
                leading: const Text("5."),
                subtitle: const Text(
                    "Time - 9:35 AM to 11:55 AM \nLocation - A006, RnD Block"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Technology as a Public Good	 (Poster Track)'),
                leading: const Text("6."),
                subtitle: const Text(
                    "Time - 9:35 AM to 11:55 AM \nLocation - B-Wing, 6th Floor, RnD Block"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Healthcare (Speaker Track)'),
                leading: const Text("7."),
                subtitle: const Text(
                    "Time - 9:35 AM to 11:55 AM \nLocation - A106, RnD Block"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Core Research (Poster Track)'),
                leading: const Text("8."),
                subtitle: const Text(
                    "Time - 9:35 AM to 11:55 AM \nLocation - B-Wing, 3rd and 4th Floor, RnD Block"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Design (Speaker Track)'),
                leading: const Text("9."),
                subtitle: const Text(
                    "Time - 9:35 AM to 11:55 AM \nLocation - B105, RnD Block"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Cyberphysical Systems	 (Poster Track)'),
                leading: const Text("10."),
                subtitle: const Text(
                    "Time - 9:35 AM to 11:55 AM \nLocation - A-Wing, 6th Floor, RnD Block"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Lunch'),
                leading: const Text("11."),
                subtitle: const Text(
                    "Time - 1:00 PM to	2:00 PM \nLocation - Ground Floor, RnD Block"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Artificial Intelligence (Speaker Track)'),
                leading: const Text("12."),
                subtitle: const Text(
                    "Time - 2:05 PM to	4:15 PM \nLocation - A007, RnD Block"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Artificial Intelligence (Poster Track)'),
                leading: const Text("13."),
                subtitle: const Text(
                    "Time - 2:05 PM to	4:15 PM \nLocation - 5th Floor, RnD Block"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Technology as a Public Good (Speaker Track)'),
                leading: const Text("14."),
                subtitle: const Text(
                    "Time - 2:05 PM to	4:15 PM \nLocation - A006, RnD Block"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Sustainability	 (Poster Track)'),
                leading: const Text("15."),
                subtitle: const Text(
                    "Time - 2:05 PM to	4:15 PM \nLocation - 2nd Floor, RnD Block"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Core Research (Speaker Track)'),
                leading: const Text("16."),
                subtitle: const Text(
                    "Time - 2:05 PM to	4:15 PM \nLocation - A106, RnD Block"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Healthcare (Poster Track)'),
                leading: const Text("17."),
                subtitle: const Text(
                    "Time - 2:05 PM to	4:15 PM \nLocation - 3rd and 4th Floor, RnD Block"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Cyberphysical Systems (Speaker Track)'),
                leading: const Text("18."),
                subtitle: const Text(
                    "Time - 2:05 PM to	4:15 PM \nLocation - B105, RnD Block"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Design	 (Poster Track)'),
                leading: const Text("19."),
                subtitle: const Text(
                    "Time - 2:05 PM to	4:15 PM \nLocation - A-Wing, 4th Floor, RnD Block"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text(''),
                subtitle: const Text(
                    " \n "),
                isThreeLine: true,
                onTap: () {},
              ),
            ],
          ),*/
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _launchDirectionsUrl();
        },
        backgroundColor: const Color.fromARGB(255, 63, 173, 168),
        splashColor: Colors.yellow,
        label: const Text("Get Directions to R&D"),
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
        'https://www.google.com/maps/dir/?api=1&destination=28.54391029621014,77.27158108817409&travelmode=walking');

    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
