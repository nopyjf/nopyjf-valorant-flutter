import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nopy_valorant_flutter_app/core/my_core.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: MyColor.primary,
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 56,
                ),
                Image.network(
                  "https://media.valorant-api.com/agents/22697a3d-45bf-8dd7-4fec-84a9e28c69d7/bustportrait.png",
                ),
              ],
            ),
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(),
                ),
                Expanded(
                  flex: 4,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.expand(),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: MyColor.backGround,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 24,
                          horizontal: 36,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Breach",
                              style: GoogleFonts.kanit(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 36,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.network(
                                  "https://media.valorant-api.com/agents/roles/1b47567f-8f7b-444b-aae3-b0c634622d10/displayicon.png",
                                  width: 24,
                                  height: 24,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    "Initiator",
                                    style: GoogleFonts.kanit(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text(
                                "The bionic Swede Breach fires powerful, targeted kinetic blasts to aggressively clear a path through enemy ground. The damage and disruption he inflicts ensures no fight is ever fair.",
                                style: GoogleFonts.kanit(
                                  height: 2,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                              height: 100,
                              width: double.infinity,
                              child: GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 4,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return Stack(
                                    children: [
                                      Image.network(
                                        "https://media.valorant-api.com/agents/5f8d3a7f-467b-97f3-062c-13acf203c006/abilities/ability1/displayicon.png",
                                      ),
                                      Column(
                                        children: const [
                                          Expanded(
                                            flex: 3,
                                            child: SizedBox(),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text("SKILL"),
                                          ),
                                        ],
                                      )
                                    ],
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
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
