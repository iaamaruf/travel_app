import 'package:flutter/material.dart';
import 'package:travel_app/Form%20field/sign_in_custom_formfield.dart';
class MessageScreen extends StatefulWidget {
  static const String routeName = "MessageScreen";
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  TextEditingController search = TextEditingController();
  final List<Person> people = List.generate(
      10, (index) => Person(name: 'Person $index'));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.arrow_back_ios_new,size: 20,
                        color: Colors.black,),
                    )
                ),
                SizedBox(width: 80,),
                const Text(
                  'Messages',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    height: 45,
                    width: 45,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.more_vert,
                      color: Colors.black,),
                  )
                ),

              ],
            ),

            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20.0, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Messages',
                    style: TextStyle(fontSize:20,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Lato",
                        color: Colors.black),
                  ),
                  Spacer(),
                  Icon(Icons.mode_edit,size: 25,)
                ],

              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10.0),
              child: LoginCustomInputField(
                controller: search,
                hintText: "Search",

                prefixIcon: Icon(Icons.search,size: 25,),
                suffixWidget: Icon(Icons.mic, size: 28,),


              ),
            ),


            // ListView.builder(
            //   itemCount: people.length,
            //   itemBuilder: (context, index) {
            //     return ListTile(
            //       leading: CircleAvatar(
            //         child: Text((index + 1).toString()),
            //       ),
            //       title: Text(people[index].name),
            //       subtitle: Text('Last message preview'),
            //       onTap: () {
            //         // Navigate to the chat screen with the selected person
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => ChatScreen(person: people[index]),
            //           ),
            //         );
            //       },
            //     );
            //   },
            // ),


          ],
        ),
      
      
      
      ),
    );
  }
}

class Person {
  final String name;

  Person({required this.name});
}

class ChatScreen extends StatelessWidget {
  final Person person;

  ChatScreen({required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(person.name),
      ),
      body: Center(
        child: Text('Chat with ${person.name}'),
      ),
    );
  }
}