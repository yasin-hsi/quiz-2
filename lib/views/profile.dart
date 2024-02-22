import 'package:flutter/material.dart';
import 'package:hsi_app/components/header_icon.dart';
import 'package:hsi_app/components/list_admin.dart';
import 'package:hsi_app/components/section_divider.dart';
import 'package:hsi_app/config/config.dart' as config;

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Profil',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Text(
            config.appVersion,
            style: TextStyle(color: Color(0xFF898989)),
          ),
          SizedBox(width: 10)
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset('assets/images/logo.png'),
            title: const Text(
              config.userName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(config.userId),
            trailing: const SizedBox(
              width: 64,
              child: Row(children: [
                Icon(
                  Icons.edit_note,
                  color: Color(0xFF233975),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "Ubah",
                  style: TextStyle(
                      color: Color(0xFF233975),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )
              ]),
            ),
          ),
          const SectionDivider(),
          const ListTile(
            leading: Icon(Icons.phone, color: Color(0xFF233975)),
            title: Text(
              'Nomor Whatsapp',
              style: TextStyle(color: Color(0xFF898989), fontSize: 14),
            ),
            subtitle: Text(
              "62-811122223333",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.home, color: Color(0xFF233975)),
            title: Text(
              'Alamat',
              style: TextStyle(color: Color(0xFF898989), fontSize: 14),
            ),
            subtitle: Text(
              "Griya Indah Serpong, Kelurahan Cibinong, Kecamatan Gunung Sindur",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.pin_drop, color: Color(0xFF233975)),
            title: Text(
              'Kabupaten/Kota, Provinsi, Kode Pos',
              style: TextStyle(color: Color(0xFF898989), fontSize: 14),
            ),
            subtitle: Text(
              "KAB. BOGOR, JAWA BARAT, 16340",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.circle, color: Color(0xFF233975)),
            title: Text(
              'Status Pernikahan',
              style: TextStyle(color: Color(0xFF898989), fontSize: 14),
            ),
            subtitle: Text(
              "KAB. BOGOR, JAWA BARAT, 16340",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const SectionDivider(),
          Container(
              padding: const EdgeInsets.all(20),
              child: const Column(
                children: [
                  HeaderIcon(
                      label: "List Admin",
                      icon: Icon(
                        Icons.headset_mic,
                        color: Color(0xFF233975),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  ListAdmin(
                      name: "Nova Wiliyanto",
                      id: "ARN201-64139",
                      title:
                          "Silsilah Ilmiyyah 6 - Beriman Kepada Malaikat\nGrup: ARN231-10"),
                  ListAdmin(
                      name: "Tedi Brajadentas",
                      id: "ARN221-16218",
                      title:
                          "Silsilah Ilmiyyah 6 - Beriman Kepada Malaikat\nGrup: ARN231-10")
                ],
              )),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderIcon(
                      label: "Info Lainnya",
                      icon: Icon(
                        Icons.info,
                        color: Color(0xFF233975),
                      )),
                ],
              ))
        ],
      ),
    );
  }
}
