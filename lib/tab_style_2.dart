import 'package:flutter/material.dart';

class TabStyle2 extends StatefulWidget {
  @override
  _TabStyle2State createState() => _TabStyle2State();
}

class _TabStyle2State extends State<TabStyle2>
    with SingleTickerProviderStateMixin {
  //TabController tabController;

  @override
  void initState() {
    //tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          /* leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ), */
          elevation: 0,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(top: 7),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.amber,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Positioned(
                    left: 60,
                    child: TabBar(
                      //indicatorPadding: EdgeInsets.all(0),
                      indicatorWeight: 0,
                      indicatorPadding: EdgeInsets.all(0),
                      isScrollable: true,
                      //controller: tabController,
                      labelPadding: EdgeInsets.symmetric(horizontal: 20),
                      //indicatorSize: TabBarIndicatorSize.label,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.amber,
                          width: 3,
                        ),
                      ),
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.amber,
                      tabs: <Widget>[
                        Tab(
                          child: Container(
                            child: Text(
                              'SAVE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            //width: 30,
                            child: Text(
                              'DELETE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(
                              'RUN',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(
                              'OK',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(
                              'SABES',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(
                              'HELLO',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text('Save'),
            ),
            Center(
              child: Text('Delete'),
            ),
            Center(
              child: Text('Run'),
            ),
            Center(
              child: Text('OK'),
            ),
            Center(
              child: Text('Sabes'),
            ),
            Center(
              child: Text('Hello'),
            ),
          ],
        ),
      ),
    );
  }
}
