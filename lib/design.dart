import 'package:flutter/material.dart';

class Design extends StatefulWidget {
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextFormField(
                cursorColor: Colors.black,
                //style: TextStyle(color: Colors.red),
                decoration: InputDecoration(
                  //hoverColor: Colors.black,
                  isDense: true,
                  contentPadding: EdgeInsets.all(15),
                  fillColor: Colors.black,
                  prefixIcon: Icon(Icons.search,size: 30,color: Color(0xFFfca903),),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(color: Colors.black26, width: 3.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Colors.black26,
                      width: 3.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFfca903),
                  border: Border.all(color: Color(0xFFfca903), width: 4),
                  borderRadius: BorderRadius.circular(20)),
              child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFFfca903),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 25),
                child: Text(
                  'Categories',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.white, width: 15),
                                  borderRadius: BorderRadius.circular(80)),
                              child: Image(
                                  image: AssetImage('assets/images/woman.png'),
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.fill)),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Text(
                            'Women',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.white, width: 15),
                                  borderRadius: BorderRadius.circular(80)),
                              child: Image(
                                  image: AssetImage('assets/images/men.png'),
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.fill)),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Text(
                            'Men',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.white, width: 15),
                                  borderRadius: BorderRadius.circular(80)),
                              child: Image(
                                  image: AssetImage('assets/images/devices.png'),
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.fill)),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Text(
                            'Devices',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.white, width: 15),
                                  borderRadius: BorderRadius.circular(80)),
                              child: Image(
                                  image: AssetImage('assets/images/Gadgets.png'),
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.fill)),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Text(
                            'Gadgets',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.white, width: 15),
                                  borderRadius: BorderRadius.circular(80)),
                              child: Image(
                                  image: AssetImage('assets/images/games.png'),
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.fill)),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Text(
                            'Games',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.white, width: 15),
                                  borderRadius: BorderRadius.circular(80)),
                              child: Image(
                                  image: AssetImage('assets/images/baby.png'),
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.fill)),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Text(
                            'Baby',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 25),
                child: Row(
                  children: [
                    Text(
                      'Best Selling',
                      style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.56,),
                    Text('See all',style: TextStyle(color: Colors.white,fontSize: 15,),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 20,
                          color: Colors.white,
                            //BoxDecoration(color: Colors.black)
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15),),
                            side: BorderSide(color: Colors.black)
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.35,
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Image(image: AssetImage('assets/images/xyz.png')),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 5,),
                          child: Text('XYZ earphone',style: TextStyle(
                            color: Colors.white
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 5,),
                          child: Text('XION',style: TextStyle(color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 5,),
                          child: Text('2400',style: TextStyle(color: Colors.white),),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 20,
                          color: Colors.white,
                          //BoxDecoration(color: Colors.black)
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15),),
                              side: BorderSide(color: Colors.black)
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.35,
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Image(image: AssetImage('assets/images/watch.png'),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 5,),
                          child: Text('ABC smartwatch',style: TextStyle(color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 5,),
                          child: Text('XION',style: TextStyle(color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 5,),
                          child: Text('2400',style: TextStyle(color: Colors.white),),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              // Text('XYZ earphone'),
              // Text('XION'),
              // Text('2400')
            ],
          ),
        ),
      ),
    );
  }
}
