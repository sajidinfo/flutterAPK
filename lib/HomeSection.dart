import 'package:designebysajid/postReq.dart';
import 'package:flutter/material.dart';
import 'aboutSection.dart';
import 'forms.dart';
import 'gallarySection.dart';
import 'getHttpRequest.dart';
import 'hpage.dart';
import 'http_get_req_url.dart';
class varibale {
  static String name = "sajid";
  static String lastname = "khan";
  static fullname() {
    return name + lastname;
  }
}

class HomePage extends StatelessWidget {
  final int _pageIndex = 0;
  late PageController _pageController;

  @override
  Widget build(BuildContext context) {
    const drawerHeader = UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      accountName: Text(
        "UserName",
      ),
      accountEmail: Text(
        "S@gmail.com",
      ),
      currentAccountPicture: CircleAvatar(
        child:Image(image:AssetImage('images/Jusbid_logo.png'),),
        backgroundColor: Colors.white,
      ),
    );
    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          title: const Text("Home Page"),
          leading: const Icon(
            Icons.home,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeState()));
          },
        ),
        ListTile(
          title: const Text("Gallery"),
          leading: const Icon(
            Icons.library_books,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const gallaryPage()));
          },
        ),
        ListTile(
          title: const Text("Http Get Request"),
          leading: const Icon(
            Icons.refresh,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => httpSection()));
          },
        ),
        ListTile(
          title: const Text("Http Get Request By URl"),
          leading: const Icon(
            Icons.refresh,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const GetUrlReq()));
          },
        ),
        ListTile(
          title: const Text("Http Post Request"),
          leading: const Icon(
            Icons.refresh,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyFormPage()));
          },
        ),
        ListTile(
          title: const Text("About Us"),
          leading: const Icon(
            Icons.info,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const aboutPage()));
          },
        ),
        ListTile(
          title: const Text("Cupertino Form"),
          leading: const Icon(
            Icons.camera,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CupertinoTextFieldDemo()));
          },
        ),
        ListTile(
          title: const Text("Logout account"),
          leading: const Icon(
            Icons.logout,
          ),
          onTap: () {
            Navigator.pop(context, false);
          },
        ),
      ],
    );
    /////////////////////////////////////////////////////////////
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Learn Flutter"),
          backgroundColor: Colors.red,
          actions: <Widget>[
            IconButton(
              tooltip: 'Search...',
              icon: const Icon(Icons.search),
              onPressed: () => {},
            ),
          ],
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 200,
              width: 2000,
              child:Image.asset('images/webbanner-01.jpeg'),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          mouseCursor: SystemMouseCursors.grab,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.red,
          currentIndex: _pageIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.app_registration),
              label: 'Sign Up Form',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: 'Sign In Form',
            ),
          ],
        ),
        drawer: Drawer(
          child: drawerItems,
        ),
      ),
    );
  }
}

