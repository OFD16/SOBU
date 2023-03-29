import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Saved build',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: 'Roboto',
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          const SizedBox(height: 8),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xffE1DBDB),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Container(
                          width: 105,
                          height: 105,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  'https://img.freepik.com/free-vector/city-skyline-concept-illustration_114360-8923.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Text(
                                    'Eskisehir apartment',
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.fade,
                                    maxLines: 1,
                                    softWrap: false,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ),
                                Flexible(flex: 1,child: Icon(Icons.my_location, color: Colors.black)),
                                Flexible(flex: 1,child: Icon(Icons.bookmark, color: Colors.black)),
                              ],
                            ),
                            const Text(
                              '17, İstiklal, Başarılı Sk., 26010 Ümraniye/İstanbul',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color(0xff777575),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                fontFamily: 'Roboto',
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () =>
                                  {Navigator.pushNamed(context, 'home_detail_view')},
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 10),
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                'See More Detail',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Homes Close To Your Home',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: 'Roboto',
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          const SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 150,
                      height: 120,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2018/07/14/15/27/cafe-3537801_960_720.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 70,
                      decoration: const BoxDecoration(
                        color: Color(0xffE1DBDB),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                      ),
                      child: Column(
                        children: [
                          const Text('Eskisehir apartment', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal,
                      ),),
                          OutlinedButton(
                            onPressed: () =>
                            {Navigator.pushNamed(context, 'home_detail_view')},
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                              backgroundColor: const Color(0xffAD3333),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'More Detail',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10,),
                Column(
                  children: [
                    Container(
                      width: 150,
                      height: 120,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2018/07/14/15/27/cafe-3537801_960_720.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 70,
                      decoration: const BoxDecoration(
                        color: Color(0xffE1DBDB),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                      ),
                      child: Column(
                        children: [
                          const Text('Eskisehir apartment', style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontStyle: FontStyle.normal,
                          ),),
                          OutlinedButton(
                            onPressed: () =>
                            {Navigator.pushNamed(context, 'home_detail_view')},
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                              backgroundColor: const Color(0xffAD3333),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'More Detail',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10,),
                Column(
                  children: [
                    Container(
                      width: 150,
                      height: 120,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2018/07/14/15/27/cafe-3537801_960_720.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 70,
                      decoration: const BoxDecoration(
                        color: Color(0xffE1DBDB),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                      ),
                      child: Column(
                        children: [
                          const Text('Eskisehir apartment', style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontStyle: FontStyle.normal,
                          ),),
                          OutlinedButton(
                            onPressed: () =>
                            {Navigator.pushNamed(context, 'home_detail_view')},
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                              backgroundColor: const Color(0xffAD3333),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'More Detail',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
