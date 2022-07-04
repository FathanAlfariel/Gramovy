import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gramovy/json/songs_json.dart';
import 'package:gramovy/home/music_detail_page.dart';
import 'package:page_transition/page_transition.dart';

class Search extends StatefulWidget {
  final dynamic song;

  const Search({Key? key, this.song}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: getBody(),
      ),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: CupertinoSearchTextField(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Top Genre',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 90,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'J-pop',
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Lofi',
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 90,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Hip hop',
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Rap',
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 90,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Edm',
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'More',
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Trendy Songs',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Row(
                children: List.generate(
                  5,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                                alignment: Alignment.bottomCenter,
                                child: MusicDetailPage(
                                  title: songs[index]['title'],
                                  description: songs[index]['description'],
                                  img: songs[index]['img'],
                                  songUrl: songs[index]['song_url'],
                                ),
                                childCurrent: const Search(),
                                type: PageTransitionType.bottomToTopJoined),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 180,
                              height: 180,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(songs[index]['img']),
                                      fit: BoxFit.cover),
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 180,
                              child: Text(
                                songs[index]['title'],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Playlist',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: List.generate(
                  5,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                                alignment: Alignment.bottomCenter,
                                child: MusicDetailPage(
                                  title: songs[index]['title'],
                                  description: songs[index]['description'],
                                  img: songs[index]['img'],
                                  songUrl: songs[index]['song_url'],
                                ),
                                childCurrent: const Search(),
                                type: PageTransitionType.bottomToTopJoined),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 180,
                              height: 180,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(songs[index]['img']),
                                      fit: BoxFit.cover),
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 180,
                              child: Text(
                                songs[index]['title'],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
