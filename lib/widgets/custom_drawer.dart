import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    void _closeDrawer() {
      Navigator.of(context).pop();
    }

    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Color(0xFFFF2B8C),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/logo.png'),
              ),
              Text(
                'Rohan Singh',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Column(
          children: [
            _buildListTile(
                'Vouchers & Offers', Icons.local_offer_outlined, _closeDrawer),
            _buildListTile(
                'Favorites', Icons.favorite_outline_rounded, _closeDrawer),
            _buildListTile('Orders & reordering',
                Icons.my_library_books_outlined, _closeDrawer),
            _buildListTile('Address', Icons.location_on_outlined, _closeDrawer),
            _buildListTile(
                'Payment methods', Icons.payment_rounded, _closeDrawer),
            _buildListTile(
                'Help center', Icons.help_outline_rounded, _closeDrawer),
            _buildListTile(
                'Invite friends', Icons.wallet_giftcard_outlined, _closeDrawer),
            const Divider(),
            _buildListTile('Settings', Icons.settings_outlined, _closeDrawer),
            _buildListTile('Terms & Conditions / Privacy',
                Icons.privacy_tip_outlined, _closeDrawer),
            _buildListTile('Logout', Icons.logout_outlined, _closeDrawer),
          ],
        )
      ]),
    );
  }

  // Create custom reusable listtile widget
  Widget _buildListTile(String title, IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: Icon(
          icon,
          color: const Color(0xFFFF2B8C),
        ),
        title: Text(
          title,
          style: const TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
