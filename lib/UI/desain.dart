import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Digital Card',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.normal,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 1, 105, 190),
      ),
      body: Center(
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('image/Foto.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Muhammad Ilham Misbakhul Anwar',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 15),
                          Text(
                            'Mahasiswa',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 15),
                          Text(
                            '085171224653',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 15),
                          Text(
                            'ilhammisbakhul123@gmail.com',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 200,
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/QRCode.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('image/Foto.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        width: 350,
                        child: Card(
                          elevation: 4,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'DIGITAL CARD',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Text(
                                  'Nama: Muhammad Ilham Misbakhul Anwar',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'Jabatan: Mahasiswa',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'No. HP: 089535253769',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'Email: ilhammisbakhul81@gmail.com',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 150,
                        height: 150,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/QRCode.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
