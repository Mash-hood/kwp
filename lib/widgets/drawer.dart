import 'package:flutter/material.dart';
import 'package:kwp/kwp-theme.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: KwpTheme.primaryVariant1, width: 1.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Icon(Icons.account_circle, size: 96),
                    const SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/profile-page');
                      },
                      child: const Text(
                        'View profile',
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                const Text('Muyiwa Adegoke',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ],
            ),
          ),

          //   const Divider(thickness: 1, color: KwpTheme.primaryVariant1),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.history_edu),
            title: const Text('History'),
            onTap: () {
              Navigator.pushNamed(context, '/history-page');
            },
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text('Help'),
            onTap: () {
              Navigator.pushNamed(context, '/help-page');
            },
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/settings-page');
            },
          ),
          Expanded(
            child: Container(),
          ),
          ListTile(
            tileColor: KwpTheme.accentFailed,
            iconColor: Colors.white,
            textColor: Colors.white,
            leading: const Icon(Icons.logout),
            title: const Text('Log-out',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
            onTap: () {
              // backend function call to logout
            },
          ),
        ],
      ),
    );
  }
}
