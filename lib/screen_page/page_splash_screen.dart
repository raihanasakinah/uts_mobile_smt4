import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:uts_mobile_smt4/screen_page/page_register_api.dart';

class PageBeranda extends StatelessWidget {
  const PageBeranda({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'UTS Project | Raihana Sakinah',
          style: TextStyle(
            color: Colors.white, // Ubah warna teks judul menjadi hitam
          ),
        ),
        centerTitle: true,
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('gambar/background.jpg'), // Ganti dengan path gambar latar belakang
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'gambar/tekinfo.png',
                  fit: BoxFit.contain,
                  height: 200,
                  width: 200,
                ),
                Text('PROJECT UTS'),
                Text('Manajemen Informatika 2C'),
                MaterialButton(
                  onPressed: () {
                    showToast(
                      'Register',
                      context: context,
                      axis: Axis.horizontal,
                      alignment: Alignment.center,
                      position: StyledToastPosition.bottom,
                      toastHorizontalMargin: 28,
                      fullWidth: true,
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageRegisterApi(),
                      ),
                    );
                  },
                  child: Text(
                    'Lanjutkan',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  color: Colors.grey,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
