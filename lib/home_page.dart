import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'services/experience.dart';
import 'services/past_experience.dart';
import 'services/user_input_values.dart';
import 'screens/edit_info_page.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomePage> {
  bool isReadMore = false;

  List<Experience> ExperienceCardDetails = [
    Experience('images/background_image.jpg', 'Link 1', 'Internshala', 'Internship/Full Time'),
    Experience('images/background_image.jpg', 'Link 1', 'Internshala', 'Internship/Full Time'),
    Experience('images/background_image.jpg', 'Link 1', 'Internshala', 'Internship/Full Time'),
    Experience('images/background_image.jpg', 'Link 1', 'Internshala', 'Internship/Full Time'),
    Experience('images/background_image.jpg', 'Link 1', 'Internshala', 'Internship/Full Time'),
    Experience('images/background_image.jpg', 'Link 1', 'Internshala', 'Internship/Full Time'),

  ];
  
  List<PastExperience> PastExperienceCardDetails = [
    PastExperience('Internship/FullTime', 'GenieGig', 'Flutter Developer', '2 months'),
    PastExperience('Internship/FullTime', 'GenieGig', 'Flutter Developer', '2 months'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.grey.shade300,
            //height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 0 , top: 10),
                   child: Container(
                    // height: MediaQuery.of(context).size.height*0.4,
                     width: MediaQuery.of(context).size.width*0.9,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.white,
                     ),
                     child: Column(
                       children: [
                         Stack(
                           children:[
                            SizedBox(
                             height: MediaQuery.of(context).size.height*.2,
                             width: MediaQuery.of(context).size.width*.9,
                             child: Container(
                               decoration: const BoxDecoration(
                                 image: DecorationImage(image: AssetImage('images/background_image.jpg',
                                 ),
                                   fit: BoxFit.cover,
                                 ),
                               ),
                             ),
                           ),
                             Positioned(
                               top: 50,
                               left: MediaQuery.of(context).size.width*.42,
                               child: const CircleAvatar(
                                 radius: 51,
                                 backgroundColor: Colors.white,
                                 child: CircleAvatar(
                                   backgroundImage: AssetImage('images/profile.jpg'),
                                   radius: 50,
                                 ),
                               ),
                             ),
                    ]
                         ),
                          Padding(
                           padding:  const EdgeInsets.all(8.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               const SizedBox(width: 10,),
                               const Text('User Name' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),),
                               IconButton(onPressed: ()  {
                                 Navigator.push(
                                     context,
                                     MaterialPageRoute(builder: (context) => const UserInfoEdit()));
                               }, icon: const Icon(Icons.edit))
                             ],
                           ),
                         ),

                         Container(
                             width: 200,
                             child:  Text(status!,
                               style: const TextStyle(fontSize:10),
                             )),

                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children:  [
                             Text(location!, style: TextStyle(fontSize: 12 , fontWeight: FontWeight.bold),),
                           const  SizedBox(
                               width: 10,
                             ),
                            const Text('Education' , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.bold),),
                            const SizedBox(
                               width: 10,
                             ),
                            const Text('Hindi,English' , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.bold),)
                           ],
                         ),
                         Padding(
                           padding: const EdgeInsets.all(12.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               Container(
                                 child: ElevatedButton(style: ElevatedButton.styleFrom(
                                   primary: Colors.white,
                                   side: const BorderSide(
                                     color: Colors.black , width: 1
                                   )
                                 ),
                                     child: const Text('Level 4' , style: TextStyle(color: Colors.black),),
                                   onPressed: () {},
                                 ),
                               ),
                               Container(
                                 child: ElevatedButton(style: ElevatedButton.styleFrom(
                                     primary: Colors.deepOrange,

                                 ),
                                   child: const Text('message' , style: TextStyle(color: Colors.white),),
                                   onPressed: () {},
                                 ),
                               )
                             ],
                           ),
                         )
                       ],
                     ),
                   ),
                 ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  
                    child: Container(
                     // height: MediaQuery.of(context).size.height*0.15,
                      width: MediaQuery.of(context).size.width*0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                        child: Column(
                            children: [
                             const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('About' , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.bold),)),
                              ),
                              Padding(
                                padding:const EdgeInsets.all(8.0),
                                child: buildText(About!)
                              ),
                              Padding(padding: EdgeInsets.all(8),
                              child: buildButton(),
                              )
                            ],
                          ),
                    ),
                  ),
                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10 , left: 0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height*0.60,
                          width: MediaQuery.of(context).size.width*0.40,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text('Skills' , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.bold),)),
                                ),
                                Row(
                                  children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children:const [
                                           Text('Programming' , style: TextStyle(color: Colors.grey , fontSize: 10),),
                                            Text('&' , style: TextStyle(color: Colors.grey , fontSize: 10),),
                                            Text('Development' , style: TextStyle(color: Colors.grey , fontSize: 10),),
                                          ],
                                        ),
                                      ),
                                   const VerticalDivider(),
                                   const SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      child: Wrap(
                                        children: const[
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Chip(label: Text('Web Development' , style: TextStyle(fontSize: 10),
                                            ),
                                              backgroundColor: Colors.blueAccent,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Chip(label: Text('React' , style: TextStyle(fontSize: 10),
                                            ),
                                              backgroundColor: Colors.blueAccent,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Chip(label: Text('NodejS' , style: TextStyle(fontSize: 10),
                                            ),
                                              backgroundColor: Colors.blueAccent,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Chip(label: Text('App Development' , style: TextStyle(fontSize: 10),
                                            ),
                                              backgroundColor: Colors.blueAccent,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Chip(label: Text('Flutter' , style: TextStyle(fontSize: 10),
                                            ),
                                              backgroundColor: Colors.blueAccent,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Chip(label: Text('Firebase' , style: TextStyle(fontSize: 10),
                                            ),
                                              backgroundColor: Colors.blueAccent,
                                            ),
                                          ),


                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15.0 , top: 30),
                                      child: Column(
                                        children:const [
                                          Text('Graphic' , style: TextStyle(color: Colors.grey , fontSize: 10),),
                                          Text('Designing' , style: TextStyle(color: Colors.grey , fontSize: 10),),
                                        ],
                                      ),
                                    ),

                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10 , right: 10),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height*0.60,
                          width: MediaQuery.of(context).size.width*0.40,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              children: [
                                 const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text('Past Experience' , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.bold),)),
                                ),
                                  AspectRatio(
                                        // height: MediaQuery.of(context).size.height*0.250,
                                        // width: MediaQuery.of(context).size.height*0.350,
                                        aspectRatio: 4/1,
                                        child: Card(
                                          elevation: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    const Text('Organisation' , style: TextStyle(fontSize: 16 , color: Colors.black , fontWeight: FontWeight.bold),),
                                                    const SizedBox(width:5 ,),
                                                    Text('PastExperienceCardDetails[index].Organisation ', style: TextStyle(fontSize: 16 , color: Colors.black ),),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    const Text('Position' , style: TextStyle(fontSize: 16 , color: Colors.black , fontWeight: FontWeight.bold),),
                                                    const SizedBox(width:5 ,),
                                                    Text('PastExperienceCardDetails[index].Position' , style: TextStyle(fontSize: 16 , color: Colors.black ),),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                   const Text('Type' , style: TextStyle(fontSize: 16 , color: Colors.black , fontWeight: FontWeight.bold),),
                                                   const SizedBox(width:5 ,),
                                                    Text('PastExperienceCardDetails[index].TypeName' , style: TextStyle(fontSize: 16 , color: Colors.black ),),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                   const Text('Tenure' , style: TextStyle(fontSize: 16, color: Colors.black , fontWeight: FontWeight.bold),),
                                                   const SizedBox(width:5 ,),
                                                    Text('PastExperienceCardDetails[index].Tenure' , style: TextStyle(fontSize: 16 , color: Colors.black ),),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 5 , right: 50),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: ElevatedButton(
                                        onPressed: (){},
                                        child: const Text(
                                        'See more' , style: TextStyle(fontSize:12 , color: Colors.white),
                                      ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,
                                          onPrimary: Colors.white,
                                        ),
                                      ),

                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height*0.40,
                    width: MediaQuery.of(context).size.width*0.9,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('Projects worked upon' , style: Theme.of(context).textTheme.bodyText2)),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                                height: MediaQuery.of(context).size.height*.30,
                              child: Scrollbar(
                                child: ListView.builder(
                                   itemCount: ExperienceCardDetails.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context , index)
                                  {
                                    return Container(
                                      height:MediaQuery.of(context).size.height*.40,
                                      width: MediaQuery.of(context).size.width*.25,
                                      child: Card(
                                        elevation: 5,
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: MediaQuery.of(context).size.height*.15,
                                              width: MediaQuery.of(context).size.width*.25,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(image: AssetImage(ExperienceCardDetails[index].imgUrl
                                                  ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8.0 , top: 8),
                                              child: Row(
                                                children: [
                                                  const Text('Platform:' , style: TextStyle(fontSize: 16 , color: Colors.black , fontWeight: FontWeight.bold),),
                                                  const SizedBox(width:5 ,),
                                                  Text(ExperienceCardDetails[index].PlatformName , style: TextStyle(fontSize: 16 , color: Colors.black , fontWeight: FontWeight.bold ),),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8.0 ,top: 4),
                                              child: Row(
                                                children: [
                                                 const Text('Type' , style: TextStyle(fontSize: 16 , color: Colors.black , fontWeight: FontWeight.bold),),
                                                 const SizedBox(width:5 ,),
                                                  Text(ExperienceCardDetails[index].TypeName , style: TextStyle(fontSize: 16 , color: Colors.black , fontWeight: FontWeight.bold ),),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8.0 ,top: 4),
                                              child: Row(
                                                children:const [
                                                  Text('Link:' , style: TextStyle(fontSize: 16 , color: Colors.black , fontWeight: FontWeight.bold),),
                                                  SizedBox(width:5 ,),
                                                  //Text('Internship/Full Time' , style: TextStyle(fontSize: 6 , color: Colors.black , fontWeight: FontWeight.bold ),),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8.0 ,top: 1),
                                              child: Row(
                                                children: [
                                                  Text(ExperienceCardDetails[index].LinkName , style: TextStyle(fontSize: 16 , color: Colors.black ),),
                                                 const SizedBox(width:5 ,),
                                                  //Text('Internship/Full Time' , style: TextStyle(fontSize: 6 , color: Colors.black , fontWeight: FontWeight.bold ),),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildButton() => ElevatedButton(style: ElevatedButton.styleFrom(
    padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 8),
    textStyle: TextStyle(fontSize: 10),
  ),
  child: Text( isReadMore ? 'Read less':'Read more'),
    onPressed: () => setState(() =>
      isReadMore  = !isReadMore)
  );
  Widget buildText(String text)
  {
    final maxLines = isReadMore?null:3;
    final overflow = isReadMore?TextOverflow.visible:TextOverflow.ellipsis;
    return Text(
      text , style: TextStyle(fontSize: 12),
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

