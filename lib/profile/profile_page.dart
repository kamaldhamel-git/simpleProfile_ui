import 'package:flutter/material.dart';

import '../dummy_data.dart';
import 'profile_items_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //----------APPBAR OF THE PROFILE----------//
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: GestureDetector(
              child: const Icon(Icons.arrow_back),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Profile",
          // textAlign: TextAlign.center, //it didnot work
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(child: Icon(Icons.menu)),
          ),
        ],
      ),
      //----------BODY OF THE PROFILE----------//
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // for centering and circling the image.
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: const NetworkImage(
                    "https://pics.craiyon.com/2023-10-25/b65f72d6d11a48c1bc560059cc36e31f.webp"),
                child: GestureDetector(
                  onTap: () {},
                ),
              ),
            ),
            // Name
            const Padding(
              padding: EdgeInsets.only(top: 14),
              child: Text(
                "Kamal Dhamel",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text(
              "@kamaldhamel",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            // profile edit button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  elevation: 5,
                ),
                child: const Text("Edit Profile"),
              ),
            ),
            // creating a line in between
            const Divider(
              height: 50,
              // color: Colors.amber,
            ),
            //-------CREATING LIST OF ITEMS IN ROW-------//
            //const ProfileItems(), // The items are reusable so, changed it to a widget. This way still got long to code so more for next way;
            ListView.separated(
              itemCount: DummyData.profileItemList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ProfileItems(
                  icon: DummyData.profileItemList[index]['icon'],
                  title: DummyData.profileItemList[index]['title'],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 20,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
