import 'package:flutter/material.dart';
import 'package:flutter_app_1st/Route_page/test_page.dart';

class Drawer_class extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Isuru pathum',
              style: TextStyle(fontSize: 25.0),
            ),
            accountEmail: Text('Pathumkodippili@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.red),
          ),
          Hero(
            tag: 'btnhome',
            child: InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Hero(
            tag: 'btnmyacc',
            child: InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.account_balance,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Hero(
            tag: 'btnorder',
            child: InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Hero(
            tag: 'btncart',
            child: InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Cart'),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Hero(
            tag: 'btnfav',
            child: InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(
                Icons.settings,
                color: Colors.grey,
              ),
            ),
          ),
          Hero(
            tag: 'btnabout',
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => test_page()));
              },
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.info_rounded,
                  color: Colors.blue,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
