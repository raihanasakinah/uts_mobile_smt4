import 'package:flutter/material.dart';
import 'package:uts_mobile_smt4/screen_page/page_register_api.dart';
import 'package:uts_mobile_smt4/screen_page/page_list_berita.dart';
import 'package:uts_mobile_smt4/screen_page/page_profil.dart';


class PageBottomNavigationBar extends StatefulWidget {
  const PageBottomNavigationBar({super.key});

  @override
  State<PageBottomNavigationBar> createState() => _PageBottomNavigationBarState();
}

class _PageBottomNavigationBarState extends State<PageBottomNavigationBar>
    with SingleTickerProviderStateMixin{
  TabController? tabController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      //   title: Text('Bottom Navigation Bar'),
      // ),

      body: TabBarView(
        controller: tabController,
        children: const [
          PageListBerita(),
          PageProfileUser()
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        child: SingleChildScrollView(
          child: TabBar(
            isScrollable: true,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            controller: tabController,
            tabAlignment: TabAlignment.center,
            tabs: const [
              Tab(
                text: "List Berita",
                icon: Icon(Icons.article),
              ),
              // Tab(
              //   text: "List Pegawai", // Tambahkan label untuk tab baru
              //   icon: Icon(Icons.group),
              // ),
              Tab(
                text: "Profil User",
                icon: Icon(Icons.person),
              ),


            ],
          ),
        ),
      ),
    );

  }
}