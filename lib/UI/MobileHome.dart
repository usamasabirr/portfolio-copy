import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:potrtfolio/Model/Method.dart';
import 'package:potrtfolio/Widget/CustomText.dart';
import 'package:potrtfolio/Widget/MobileProject.dart';
import 'package:potrtfolio/Widget/MobileWork.dart';

import '../Widget/Workbox.dart';

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.04,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Method method = Method();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0A192F),
      // endDrawer: Drawer(
      //     elevation: 6.0,
      //     child: Column(
      //       children: [
      //         UserAccountsDrawerHeader(
      //             currentAccountPicture: CircleAvatar(
      //               child: Icon(Icons.person),
      //             ),
      //             accountName: Text("Tushar Nikam"),
      //             accountEmail: Text("champ96k@gmail.com")),
      //         ListTile(
      //           title: Text("Share"),
      //           leading: Icon(Icons.share),
      //         ),
      //         ListTile(
      //           leading: Icon(Icons.group),
      //           title: Text("About"),
      //         ),
      //         Expanded(
      //           child: Text("Version 1.0.1"),
      //         )
      //       ],
      //     )),
      // appBar: AppBar(
      //   backgroundColor: Color(0xff0A192F),
      //   elevation: 0.0,
      //   title: IconButton(
      //     icon: Icon(
      //       Icons.change_history,
      //       size: 32.0,
      //       color: Color(0xff64FFDA),
      //     ),
      //     onPressed: () {},
      //   ),
      // ),
      //sin
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomText(
                text: "Hi, my name is",
                textsize: 16.0,
                color: Color(0xff41FBDA),
                letterSpacing: 3.0,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              CustomText(
                text: "Usama Sabir.",
                textsize: 52.0,
                color: Color(0xffCCD6F6),
                fontWeight: FontWeight.w900,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              CustomText(
                text: "I build things for the Android and web.",
                textsize: 42.0,
                color: Color(0xffCCD6F6).withOpacity(0.6),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Wrap(
                  children: [
                    Text(
                      "I'm a freelancer based in Pakistan, specialized in \nbuilding (and occasionally designing) exceptional websites, \napplications, and everything in between.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        letterSpacing: 2.75,
                        wordSpacing: 0.75,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                color: Color(0xff64FFDA),
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(0.75),
                  height: 56.0,
                  width: 160.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Color(0xff0A192F),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      method.launchEmail();
                    },
                    hoverColor: Colors.green,
                    child: Text(
                      "Get In Touch",
                      style: TextStyle(
                        color: Color(0xff64FFDA),
                        letterSpacing: 2.75,
                        wordSpacing: 1.0,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),

              //About me
              FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  width: size.width,
                  //color: Colors.purple,
                  child: Column(
                    children: [
                      //About me title
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                            text: "01.",
                            textsize: 20.0,
                            color: Color(0xff61F9D5),
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          CustomText(
                            text: "About Me",
                            textsize: 26.0,
                            color: Color(0xffCCD6F6),
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Container(
                            width: size.width / 4,
                            height: 1.10,
                            color: Color(0xff303C55),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: size.height * 0.07,
                      ),

                      //About me desc
                      Wrap(
                        children: [
                          CustomText(
                            text:
                                "Hello! I'm Usama, a Freelancer based in Lahore, PAK.\n\nI enjoy creating things that live on the internet, whether that be websites, applications, or anything in between. My goal is to always build products that provide pixel-perfect, performant experiences.\n\n",
                            textsize: 16.0,
                            color: Color(0xff828DAA),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.75,
                          ),
                          CustomText(
                            text:
                                "\nWith 2.5 years of experience in creating cross-platform applications using Flutter, I'm dedicated to delivering high-quality and engaging user experiences. I specialize in building intuitive user interfaces with Flutter's widget-based approach and have a keen eye for UI design. I have worked on projects of varying complexity, including Push Notifications, Sockets,  . These experiences have equipped me with the skills to handle state management, data integration through RESTful APIs, and seamless user interactions.In addition to Flutter, I'm proficient in Dart, the programming language behind it, and have hands-on experience with technologies like Firebase for backend integration. I am always open to learning new tools and frameworks that enhance the development process and improve app performance.\n\n",
                            textsize: 16.0,
                            color: Color(0xff828DAA),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.75,
                          ),
                          CustomText(
                            text:
                                "Here are a few technologies I've been working with recently:\n\n",
                            textsize: 16.0,
                            color: Color(0xff828DAA),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.75,
                          ),
                        ],
                      ),

                      SizedBox(
                        height: size.height * 0.06,
                      ),

                      Container(
                        width: size.width,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                technology(context, "Dart"),
                                technology(context, "Flutter"),
                                technology(context, "Firebase"),
                                technology(context, "Mongo Db"),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                technology(context, "Node.js"),
                                technology(context, "Express"),
                                technology(context, "MYSQL"),
                                technology(context, "Kotlin"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.08,
              ),

              // //Image
              // Center(
              //   child: Container(
              //     height: size.height * 0.6,
              //     width: size.width * 0.7,
              //     child: Stack(
              //       children: [
              //         Positioned(
              //           top: 50,
              //           right: 20,
              //           left: 50.0,
              //           child: Card(
              //             color: Color(0xff61F9D5),
              //             child: Container(
              //               margin: EdgeInsets.all(2.75),
              //               height: size.height * 0.45,
              //               width: size.width * 0.66,
              //               color: Color(0xff0A192F),
              //             ),
              //           ),
              //         ),
              //         Container(
              //           height: size.height * 0.5,
              //           width: size.width * 0.6,
              //           child: Image(
              //             fit: BoxFit.cover,
              //             image: AssetImage("images/pic1.jpeg"),
              //           ),
              //         ),
              //         Container(
              //           height: size.height * 0.5,
              //           width: size.width * 0.6,
              //           color: Color(0xff61F9D5).withOpacity(0.5),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

              //Where I've Worked title
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: "02.",
                    textsize: 20.0,
                    color: Color(0xff61F9D5),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  CustomText(
                    text: "Where I've Worked",
                    textsize: 26.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    width: size.width * 0.08,
                    height: 1.10,
                    color: Color(0xff303C55),
                  ),
                ],
              ),

              //Where I have worked
              SizedBox(
                height: size.height * 0.07,
              ),
              Container(
                height: size.height * 0.5,
                child: WorkBox(),
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              //Some Things I've Built title
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: "03.",
                    textsize: 20.0,
                    color: Color(0xff61F9D5),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  CustomText(
                    text: "Some Things I've Built",
                    textsize: 26.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    width: size.width * 0.04,
                    height: 1.10,
                    color: Color(0xff303C55),
                  ),
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic9.jpg",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic2.jpg",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic3.png",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic4.jpg",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic5.jpg",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic6.jpg",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic7.jpg",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic8.jpg",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic10.jpg",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic11.jpg",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic102.gif",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic104.png",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic105.png",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic106.png",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic107.jfif",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic108.jfif",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic109.jfif",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              MobileProject(
                ontab: () {},
                image: "images/pic110.jfif",
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              Row(
                children: [
                  Container(
                    width: size.width * 0.42,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic101.png"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.42,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic103.png"),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic111.gif"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic113.jfif"),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic114.png"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic115.png"),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic116.jfif"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic117.png"),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic118.jpeg"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic119.jpeg"),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic120.png"),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.44,
                    height: size.height * 0.6,
                    child: Image(
                      image: AssetImage("images/pic121.png"),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  //height: size.aspectRatio,
                  width: size.width,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "0.4 What's Next?",
                        textsize: 16.0,
                        color: Color(0xff41FBDA),
                        letterSpacing: 3.0,
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      CustomText(
                        text: "Get In Touch",
                        textsize: 42.0,
                        color: Colors.white,
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Text(
                            "Although I'm currently looking for SDE-1 opportunities, my inbox is always open. Whether you have a question or just want to say hi, I'll try my best to get back to you!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                              letterSpacing: 0.75,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.07,
                      ),
                      Card(
                        elevation: 4.0,
                        color: Color(0xff64FFDA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(0.85),
                          height: size.height * 0.10,
                          width: size.width * 0.30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff0A192F),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text(
                              "Say Hello",
                              style: TextStyle(
                                color: Color(0xff64FFDA),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onPressed: () {
                      method.launchURL("https://github.com/champ96k");
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onPressed: () {
                      method.launchURL(
                          "https://www.linkedin.com/in/tushar-nikam-a29a97131/");
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onPressed: () {
                      method.launchURL("https://twitter.com/champ_96k");
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.mail,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onPressed: () {
                      method.launchEmail();
                    },
                  )
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              //Footer
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width,
                //color: Colors.white,
                child: Text(
                  "Designed & Built by Tushar Nikam 💙 Flutter",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.4),
                    letterSpacing: 1.75,
                    fontSize: 14.0,
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
