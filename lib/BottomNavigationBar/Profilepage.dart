import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 108, 185, 248),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildSettingItem(
              icon: Icons.person,
              text: 'Personal Info',
              onPressed: () {},
            ),
            _buildSettingItem(
              icon: Icons.notifications,
              text: 'Notification & Email',
              onPressed: () {},
            ),
            _buildSettingItem(
              icon: Icons.security,
              text: 'Privacy & Security',
              onPressed: () {},
            ),
            _buildSettingItem(
              icon: Icons.info,
              text: 'About',
              onPressed: () {},
            ),
            _buildSettingItem(
              icon: Icons.exit_to_app,
              text: 'Sign Out',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingItem({
    required IconData icon,
    required String text,
    required VoidCallback onPressed,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.centerLeft,
          iconColor: Colors.blue,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon),
                SizedBox(width: 16.0),
                Text(
                  text,
                  style: GoogleFonts.lato(fontSize: 18.0, color: Colors.black),
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,),
          ],
        ),
      ),
    );
  }
}
