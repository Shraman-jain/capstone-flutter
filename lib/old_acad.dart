import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'event_page.dart';

// ignore: must_be_immutable
class OldAcadPage extends StatelessWidget {
  //
  
  final EventTitle = ['Lab to Market/ Start-ups (Speaker Note)','Lab to Market/ Start-ups (Poster Track)','Lab to Market/ Start-ups (Speaker Note)','Lab to Market/ Start-ups (Poster Track)'];
  final EventSubtitle = ['Time - 9:35 AM	to 11:55 AM \nLocation - C01, Old Academic Building',"Time - 9:35 AM	to 11:55 AM \nLocation - Ground Floor, Old Academic Building","Time - 2:05 PM	to 4:15 PM \nLocation - C01, Old Academic Building","Time - 2:05 PM	to 4:15 PM \nLocation - Ground Floor, Old Academic Building"];
  OldAcadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Old Academic')),
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
                  title: Text(EventTitle[index],style: const TextStyle(fontWeight: FontWeight.w700)),
                  leading: Text((index+1).toString(),style: const TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text(EventSubtitle[index]),
                  isThreeLine: true,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return EventDetailsPage(
                          time: "lk",
                          //slist:spekear,
                        );
                      }),
                    );
                  },
                ),
              );
            },
            /*
            children: ListTile.divideTiles(

              context: context,
              tiles: [
              ListTile(
                title: const Text('Lab to Market/ Start-ups (Speaker Note)'),
                leading: const Text("1."),
                subtitle: const Text(
                    "Time - 9:35 AM	to 11:55 AM \nLocation - C01, Old Academic Building"),
                isThreeLine: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return EventDetailsPage(
                        time: "lk",
                        //slist:spekear,
                      );
                    }),
                  );
                },
              ),
              ListTile(
                title: const Text('Lab to Market/ Start-ups (Speaker Note)'),
                leading: const Text("2."),
                subtitle: const Text(
                    "Time - 2:05 PM	to 4:15 PM \nLocation - C01, Old Academic Building"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Lab to Market/ Start-ups (Poster Track)'),
                leading: const Text("3."),
                subtitle: const Text(
                    "Time - 9:35 AM	to 11:55 AM \nLocation - Ground Floor, Old Academic Building"),
                isThreeLine: true,
                onTap: () {},
              ),
              ListTile(
                title: const Text('Lab to Market/ Start-ups (Poster Track)'),
                leading: const Text("4."),
                subtitle: const Text(
                    "Time - 2:05 PM	to 4:15 PM \nLocation - Ground Floor, Old Academic Building"),
                isThreeLine: true,
                onTap: () {},
              ),
            ],).toList(),*/
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _launchDirectionsUrl();
        },
        backgroundColor: const Color.fromARGB(255, 63, 173, 168),
        splashColor: Colors.yellow,
        label: const Text("Get Directions to Old Academic"),
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
        'https://www.google.com/maps/dir/?api=1&destination=28.544601416129098,77.2725880257595&travelmode=walking');

    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
