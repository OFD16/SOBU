import 'package:flutter/material.dart';

class HomeDetailsScreen extends StatefulWidget {
  const HomeDetailsScreen({Key? key}) : super(key: key);

  @override
  State<HomeDetailsScreen> createState() => _HomeDetailsScreenState();
}

Color evenRows = const Color(0xffE4E3E3);
Color oddRows = const Color(0xffD9D9D9);

class _HomeDetailsScreenState extends State<HomeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    /*Future<void> _dialogBuilderIron(BuildContext context) {
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0))),
            backgroundColor: const Color(0xffD9D9D9),
            title: Row(
              children: [
                const Expanded(
                  child: Text(
                    'Common Types of Concrete Used in Construction',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            content: ListView(
              children: const [
                Text(
                  'Plain Concrete',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                  ),
                ),
                Expanded(
                    child: Text(
                      'Also known as “ordinary concrete,” plain concrete is used with a mix ratio of 1:2:4 of cement, sand, and aggregates. As plain concrete cannot stand up well to wind loading or vibrations, it is used for construction projects that do not require high-tensile strength.\n',
                      style: TextStyle(
                        color: Color(0xff525252),
                        fontSize: 14,
                        fontFamily: 'Roboto',
                      ),
                    )),

                Text(
                  'Normal Strength Concrete',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                  ),
                ),
                Expanded(
                    child: Text(
                      'Normal strength concrete is a fast-setting compound of aggregates, cement, and water. Lack of tensile strength makes normal strength concrete suitable for buildings or pavements that do not require high tensile strength. Like plain concrete, normal strength concrete contains similar ingredients but differs in strength with 10-40 MPa.\n',
                      style: TextStyle(
                        color: Color(0xff525252),
                        fontSize: 14,
                        fontFamily: 'Roboto',
                      ),
                    )),

                Text(
                  'Precast Concrete',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                  ),
                ),
                Expanded(
                    child: Text(
                      'Casting concrete into a reusable mold or form creates precast concrete that is cured in a controlled environment to gain the desired strength. Concrete grade is a key manufacturing component of precast concrete products because it helps increase concrete strength to avoid future collapse.\n',
                      style: TextStyle(
                        color: Color(0xff525252),
                        fontSize: 14,
                        fontFamily: 'Roboto',
                      ),
                    )),

                Text(
                  'Prestressed Concrete',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                  ),
                ),
                Expanded(
                    child: Text(
                      'Prestressed concrete is industrially built concrete that involves placing bars or tendons at the ends of a structural unit before the application of concrete. The unit is subject to compression stresses during production to achieve a higher structural load capacity and increased durability and tensile strength.\n',
                      style: TextStyle(
                        color: Color(0xff525252),
                        fontSize: 14,
                        fontFamily: 'Roboto',
                      ),
                    )),

                Text(
                  'Ready Mix Concrete',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                  ),
                ),
                Expanded(
                    child: Text(
                      'Also known as “ready-mixed concrete,” ready mix concrete (ready-mix concrete or RMC) is manufactured in factories under controlled operations and transported to construction sites via trucks with in-transit mixers. When already produced specialty concrete mixtures are available, they just have to be poured at construction sites\n',
                      style: TextStyle(
                        color: Color(0xff525252),
                        fontSize: 14,
                        fontFamily: 'Roboto',
                      ),
                    )),
              ],
            ),
            actions: <Widget>[],
          );
        },
      );
    }*/
    Future<void> _dialogBuilderConcrete(BuildContext context) {
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0))),
            backgroundColor: const Color(0xffD9D9D9),
            title: Row(
              children: [
                const Expanded(
                  child: Text(
                    'Common Types of Concrete Used in Construction',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            content: ListView(
              children: [
                RichText(
                  text: const TextSpan(
                    text:
                    'Plain Concrete',
                    style: TextStyle(
                      color: Color(0xff0C671B),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Very Good',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Also known as “ordinary concrete,” plain concrete is used with a mix ratio of 1:2:4 of cement, sand, and aggregates. As plain concrete cannot stand up well to wind loading or vibrations, it is used for construction projects that do not require high-tensile strength.\n',
                  style: TextStyle(
                color: Color(0xff525252),
                fontSize: 14,
                fontFamily: 'Roboto',
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Normal Strength Concrete',
                    style: TextStyle(
                      color: Color(0xff139327),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Good',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Normal strength concrete is a fast-setting compound of aggregates, cement, and water. Lack of tensile strength makes normal strength concrete suitable for buildings or pavements that do not require high tensile strength. Like plain concrete, normal strength concrete contains similar ingredients but differs in strength with 10-40 MPa.\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Precast Concrete',
                    style: TextStyle(
                      color: Color(0xff139327),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Good',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Casting concrete into a reusable mold or form creates precast concrete that is cured in a controlled environment to gain the desired strength. Concrete grade is a key manufacturing component of precast concrete products because it helps increase concrete strength to avoid future collapse.\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Prestressed Concrete',
                    style: TextStyle(
                      color: Color(0xffB6860C),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Normal',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Prestressed concrete is industrially built concrete that involves placing bars or tendons at the ends of a structural unit before the application of concrete. The unit is subject to compression stresses during production to achieve a higher structural load capacity and increased durability and tensile strength.\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Ready Mix Concrete',
                    style: TextStyle(
                      color: Color(0xffB6860C),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Normal',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Also known as “ready-mixed concrete,” ready mix concrete (ready-mix concrete or RMC) is manufactured in factories under controlled operations and transported to construction sites via trucks with in-transit mixers. When already produced specialty concrete mixtures are available, they just have to be poured at construction sites\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Reinforced Concrete',
                    style: TextStyle(
                      color: Color(0xffB6860C),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Normal',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'einforced concrete is a composite building material reinforced with steel bars placed in the formwork during construction. Examples of such bars include prefabricated steel cages and steel rebars\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Lightweight Concrete',
                    style: TextStyle(
                      color: Color(0xffB6860C),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Normal',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Alternatively known as “cellular concrete” and “flowable concrete,” lightweight concrete is made from various aggregates, such as clays, pumice, shales, and scoria.\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Pervious Concrete',
                    style: TextStyle(
                      color: Color(0xffB6860C),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Normal',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Also known as “permeable concrete,” pervious concrete’s design allows for 15% to 20% voids of the volume of concrete. As pervious concrete is ideal for the passage of water, it is used in the construction of driveways and pavements to recharge groundwater and solve drainage issues.\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Stamped Concret',
                    style: TextStyle(
                      color: Color(0xffB54C4C),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Danger',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Stamped concrete derives its name from stamping or placing a kind of mold on top of the hardening concrete to achieve a decorative concrete finish. The surface finish mimics the look and feel of natural brick, tile, and stone surfaces, among others.\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Air-entrained Concret',
                    style: TextStyle(
                      color: Color(0xffB54C4C),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Danger',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Air-entrained concrete is concrete in which air is entrained (infused) with the addition of a foaming agent such as foam or gas. The result is concrete with billions of microscopic air cells per cubic foot, with the entrained air constituting 3% to 6% of the concrete\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
          );
        },
      );
    }
    Future<void> _dialogBuilderIron(BuildContext context) {
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0))),
            backgroundColor: const Color(0xffD9D9D9),
            title: Row(
              children: [
                const Expanded(
                  child: Text(
                    'Common Types of Iron Used in Construction',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            content: ListView(
              children: [
                RichText(
                  text: const TextSpan(
                    text:
                    'Grey Cast Iron',
                    style: TextStyle(
                      color: Color(0xff0C671B),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Very Good',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'As the name suggests, it is grey in color. It has coarse crystalline structure. Its melting point is very low thus it has weak strength and it is only used for casting purposes\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Malleable Cast Iron',
                    style: TextStyle(
                      color: Color(0xff139327),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Good',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Malleability is the property which helps the materials to undergo any shape without breaking or cracking. Hence, malleable cast iron is used for making many types of materials.\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Mottled Cast Iron',
                    style: TextStyle(
                      color: Color(0xff139327),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Good',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Mottled iron is the medium stage cast iron which properties are in between grey cast iron and white cast iron. It has Small amount of graphite in its composition. So, mottled type fractures are developed in its micro structure.\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Toughened Cast Iron',
                    style: TextStyle(
                      color: Color(0xffB6860C),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Normal',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Toughened cast iron is the combination of cast iron and wrought iron. To obtain this wrought iron scrap and cast iron melted together. The composition of wrought iron is about 0.15 to 0.25 weight of the cast iron.\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'White Cast Iron',
                    style: TextStyle(
                      color: Color(0xffB6860C),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Normal',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'It is in silver color. Its melting point is high so, strength wise it is better but not used for delicate casting purposes. Because of its heavy strength, it cannot be used easily.\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Ductile Cast Iron',
                    style: TextStyle(
                      color: Color(0xffB6860C),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Normal',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Ductile cast iron is also called as spheroidal graphite iron. Its manufacturing process is very easy compared to other types. Its manufacturing process consists manganese treatment which helps to increase the carbon content and opposes the formation of graphite in flaky form.\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Chilled Cast Iron',
                    style: TextStyle(
                      color: Color(0xffB54C4C),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Danger',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Chilled cast iron consists two layers of which one layer has white cast iron properties and other one has grey cast iron properties. This type of iron is used for casting process in which grey cast iron layer is provided in inner surface and white cast iron layer is provided as outer surface.\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
          );
        },
      );
    }
    Future<void> _dialogBuilderSoil(BuildContext context) {
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0))),
            backgroundColor: const Color(0xffD9D9D9),
            title: Row(
              children: [
                const Expanded(
                  child: Text(
                    'Common Types of Soil in Construction',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            content: ListView(
              children: [
                RichText(
                  text: const TextSpan(
                    text:
                    'Rock/Bedrock',
                    style: TextStyle(
                      color: Color(0xff0C671B),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Very Good',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  '•High load-bearing capacity.\n•More stable.\n•Resistant to water damage.\n•Uneven surfaces can lead to issues with the foundations.\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Sand',
                    style: TextStyle(
                      color: Color(0xff139327),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Good',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  '•Sand & aggregates allows water to drain well.\n•High level of aeration.\n•Uncompacted sand is prone to being washed away.\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Silt',
                    style: TextStyle(
                      color: Color(0xffB6860C),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Normal',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  '•As a part of loamy soil in moderation provides positive qualities.\n•Prolonged retention of water.\n•Tendancy to shift and expand.\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Clay',
                    style: TextStyle(
                      color: Color(0xffB54C4C),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Danger',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  '•Foundations can be protected by lining the trenches.\n•Generally deeper foundations are necessary.\n•Absorbs water easily.\n',
                  style: TextStyle(
                    color: Color(0xff525252),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
          );
        },
      );
    }
    Future<void> _dialogBuilderFloor(BuildContext context) {
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0))),
            backgroundColor: const Color(0xffD9D9D9),
            title: Row(
              children: [
                const Expanded(
                  child: Text(
                    'Common Preferred Construction Floors',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            content: ListView(
              children: [
                RichText(
                  text: const TextSpan(
                    text:
                    'Soil Floors',
                    style: TextStyle(
                      color: Color(0xffB54C4C),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Danger',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    RichText(
                      text: const TextSpan(
                        text:
                        '• Soft Soil: ',
                        style: TextStyle(
                          color: Color(0xff525252),
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Digable with backhoe and spade loose soil, vegetable soil, loose sand and so on floors.\n',
                            style: TextStyle(
                              color: Color(0xff525252),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text:
                        '• Hard Soil: ',
                        style: TextStyle(
                          color: Color(0xff525252),
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'With the flat and occasionally pointed end of the pickaxe excavated; soil, sandy clay, loose clay, clayey sand, gravelly, shovelable stony soil and similar floors.\n',
                            style: TextStyle(
                              color: Color(0xff525252),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Resentment Floors',
                    style: TextStyle(
                      color: Color(0xff139327),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Good',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    RichText(
                      text: const TextSpan(
                        text:
                        '• Soft resentment: ',
                        style: TextStyle(
                          color: Color(0xff525252),
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'The pointed end of the pickaxe and occasional sulkiness, earth excavated with wedge and hammer, hard clay, soft marl, cramped, gravure, disassembled up to 0.100m³ Block stones of all sizes, due to the similarity of digging difficulties. Therefore, mud and similar soils.\n',
                            style: TextStyle(
                              color: Color(0xff525252),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text:
                        '• Hard scruff: ',
                        style: TextStyle(
                          color: Color(0xff525252),
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'The pointed end of the pick, the spit, the wedge, the hammer and rot excavated with hammer gun - cracked rock, rotten soft gravy, shale, stony marl, stony clay, 0.100- All kinds of 0.400m³ blocks that can be broken down and thrown by hand stones and similar floors.\n',
                            style: TextStyle(
                              color: Color(0xff525252),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Rock Floors',
                    style: TextStyle(
                      color: Color(0xffB6860C),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Normal',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    RichText(
                      text: const TextSpan(
                        text:
                        '• Soft rock: ',
                        style: TextStyle(
                          color: Color(0xff525252),
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Excavated using a grudge, crusher gun, or explosive material. tanned; limestone, marly limestone, schist, sandstone, loose conglomerate, gypsum, volcanic tuffs (excluding basalt tuffs) block stones of the same type larger than 0.400m³ and similar are floors.\n',
                            style: TextStyle(
                              color: Color(0xff525252),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text:
                        '• Hard rock: ',
                        style: TextStyle(
                          color: Color(0xff525252),
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Thrown using explosive material, crushed by a hammer gun dismantled thick layer and mass of hard sandstone, dense limestone, andesite, trachyte, serpentine, concreted conglomerate, basalt tuffs, marble, same genus larger than 0.400 m³ block flavors and similar grounds. Very Hard Rock: A crushing gun fired using large amounts of explosives. granite and similar, basalt, porphyry, quartzite from 0.400 m³ large blocks of the same type and similar ground.\n',
                            style: TextStyle(
                              color: Color(0xff525252),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                RichText(
                  text: const TextSpan(
                    text:
                    'Swamp and Loam Soils',
                    style: TextStyle(
                      color: Color(0xffB54C4C),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' • Danger',
                        style: TextStyle(
                          color: Color(0xff525151),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const Text('Usually sticky, with a high water content and not easily released quality floors.', style: TextStyle(
                      color: Color(0xff525252),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),),
                    RichText(
                      text: const TextSpan(
                        text:
                        'According to the way it is structured: \n',
                        style: TextStyle(
                          color: Color(0xff525252),
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '•Coarse-grained or cohesionless (intermolecular attraction) soils\n•Fine-grained or cohesive soils\n•Organic soils (Peat)\n',
                            style: TextStyle(
                              color: Color(0xff525252),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text:
                        'According to grain size: \n',
                        style: TextStyle(
                          color: Color(0xff525252),
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '•Rock: floors larger than 60 mm\n•Gravel: floors between 60 mm and 2 mm\n•Coarse sand: floors between 2 mm and 0.6 mm\n•Medium sand: floors between 0.6 mm and 0.2 mm\n•Fine sand: soils between 0.2 mm and 0.06 mm\n•Silt (coarse-medium-fine): floors between 0.06 mm and 0.002 mm\n•Clay: floors smaller than 0.002 mm\n',
                            style: TextStyle(
                              color: Color(0xff525252),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      );
    }

    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffE8E4E4),
      appBar: AppBar(
        excludeHeaderSemantics: true,
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0.5),
        title: const Text(
          'Eskisehir apartment',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 18,
            fontFamily: 'Roboto',
            fontStyle: FontStyle.normal,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.bookmark_border_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: screenWidth,
                    height: 186,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iqBBq0m3hqmA/v0/1200x-1.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    width: screenWidth,
                    height: 186,
                    color: const Color(0xffE8E4E4),
                  ),
                ],
              ),
              Positioned(
                top: 120,
                left: 31,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 8),
                      width: 140,
                      height: 200,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://img.freepik.com/free-vector/city-skyline-concept-illustration_114360-8923.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                          height: 80,
                        ),
                        const Row(
                          children: [
                            Text('Other Pictures'),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 120,
                          width: 150,
                          child: GridView.count(
                            mainAxisSpacing: 3.0,
                            crossAxisSpacing: 3.0,
                            crossAxisCount: 3,
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://cdn.pixabay.com/photo/2018/02/27/06/30/skyscrapers-3184798_960_720.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://cdn.pixabay.com/photo/2014/10/11/14/13/window-484596_960_720.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://cdn.pixabay.com/photo/2017/07/02/16/33/church-2464899_960_720.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://cdn.pixabay.com/photo/2021/08/20/14/53/monastery-6560623_960_720.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: const Color(0xffD9D9D9),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(
                                  Icons.more_horiz,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Tag',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth,
                  child: DataTable(
                    showBottomBorder: false,
                    headingRowHeight: 0,
                    columnSpacing: 20,
                    columns: const <DataColumn>[
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'Name',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'Age',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    ],
                    rows: <DataRow>[
                      DataRow(
                        color: MaterialStateProperty.all<Color>(oddRows),
                        cells: const <DataCell>[
                          DataCell(Text(
                            'Building Age',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                            ),
                          )),
                          DataCell(Text(
                            '35',
                            style: TextStyle(
                              color: Color(0xff777575),
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                            ),
                          )),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateProperty.all<Color>(evenRows),
                        cells: const <DataCell>[
                          DataCell(Text(
                            'Last Check',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                            ),
                          )),
                          DataCell(Text(
                            '12.07.2018',
                            style: TextStyle(
                              color: Color(0xff777575),
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                            ),
                          )),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateProperty.all<Color>(oddRows),
                        cells: const <DataCell>[
                          DataCell(Text(
                            'Builder Company',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                            ),
                          )),
                          DataCell(Text(
                            'M&B Cons',
                            style: TextStyle(
                              color: Color(0xff777575),
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                            ),
                          )),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateProperty.all<Color>(evenRows),
                        cells: <DataCell>[
                          const DataCell(Text(
                            'Concrete Material',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                            ),
                          )),
                          DataCell(Row(
                            children: [
                              const Text(
                                'C40',
                                style: TextStyle(
                                  color: Color(0xff777575),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                  fontFamily: 'Roboto',
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              const SizedBox(width: 2),
                              InkWell(
                                onTap: () => _dialogBuilderConcrete(context),
                                child: const Icon(
                                  Icons.info_outline_rounded,
                                  size: 18,
                                  color: Color(0xff777575),
                                ),
                              ),
                            ],
                          )),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateProperty.all<Color>(oddRows),
                        cells: <DataCell>[
                          const DataCell(Text(
                            'Iron Material',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                            ),
                          )),
                          DataCell(Row(
                            children: [
                              const Text(
                                'Ribbed Iron',
                                style: TextStyle(
                                  color: Color(0xff777575),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                  fontFamily: 'Roboto',
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              const SizedBox(width: 2),
                              InkWell(
                                onTap: () => _dialogBuilderIron(context),
                                child: const Icon(
                                  Icons.info_outline_rounded,
                                  size: 18,
                                  color: Color(0xff777575),
                                ),
                              ),
                            ],
                          )),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateProperty.all<Color>(evenRows),
                        cells: <DataCell>[
                          const DataCell(Text(
                            'Floor Type',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                            ),
                          )),
                          DataCell(Row(
                            children: [
                              const Text(
                                'Sogucak',
                                style: TextStyle(
                                  color: Color(0xff777575),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                  fontFamily: 'Roboto',
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              const SizedBox(width: 2),
                              InkWell(
                                onTap: () => _dialogBuilderFloor(context),
                                child: const Icon(
                                  Icons.info_outline_rounded,
                                  size: 18,
                                  color: Color(0xff777575),
                                ),
                              ),
                            ],
                          )),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateProperty.all<Color>(oddRows),
                        cells: <DataCell>[
                          const DataCell(Text(
                            'Result',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                            ),
                          )),
                          DataCell(Row(
                            children: [
                              InkWell(
                                onTap: () => _dialogBuilderSoil(context),
                                child: const Icon(
                                  Icons.info_outline_rounded,
                                  size: 18,
                                  color: Color(0xff777575),
                                ),
                              ),
                              const SizedBox(width: 2),
                              const Text(
                                'Good',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24,
                                  fontFamily: 'Roboto',
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          )),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
