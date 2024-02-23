import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                "Store",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff1d1d1b),
                    fontSize: 20),
              ),
            ),
            SizedBox(
              width: 331,
              height: 46.89,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF2F3F2),
                    contentPadding: const EdgeInsets.all(10),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintText: "Search Product or Brand",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none)),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 168.5,
                  height: 171,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Color(0xff1714390A), blurRadius: 35)
                    ],
                  ),
                  child: Column(
                    children: [
                      Positioned(
                        top: 3.68,
                        left: 8,
                        child: Container(
                          width: 144.5,
                          height: 101,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.amber),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "Persian Cat",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              Text(
                                "\$85",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Color(0xffE8BE13)),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
