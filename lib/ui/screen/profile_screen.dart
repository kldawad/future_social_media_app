import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List info = [
    {
      "icon": Icons.home,
      "title": "Home",
    },
    {
      "icon": Icons.location_on,
      "title": "Trending Map",
    },
    {
      "icon": Icons.help,
      "title": "Ask AnyOne",
    },
    {
      "icon": Icons.mail,
      "title": "inbox",
    },
    {
      "icon": Icons.notifications,
      "title": "Notification",
    },
    {
      "icon": Icons.favorite,
      "title": "Favorite",
    },
    {
      "icon": Icons.favorite,
      "title": "Interest",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            alignment: AlignmentDirectional(0, -0.6),
            children: [
              Column(
                children: [
                  Expanded(
                    child: Container(
                      child: Align(
                        alignment: Alignment(0, -0.75),
                        child: Text(
                          "Profile",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Theme.of(context).accentColor,
                      child: Align(
                        alignment: AlignmentDirectional.bottomStart,
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: info.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // Get.to(HomeScreen());
                                    },
                                    child: ListTile(
                                      minLeadingWidth: 0,
                                      leading: IconTheme(
                                        child: Icon(
                                          info[index]["icon"],
                                        ),
                                        data:
                                            Theme.of(context).primaryIconTheme,
                                      ),
                                      title: Text(
                                        info[index]["title"],
                                      ),
                                    ),
                                  ),
                                  if (info.length - 1 > index) Divider(),
                                ],
                              );
                            }),
                      ),
                    ),
                  ),
                ],
              ),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: NetworkImage(
                          'https://shiftart.com/wp-content/uploads/2017/04/RC-Profile-Square.jpg',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Khaled Awad",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
