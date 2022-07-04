import 'package:flutter/material.dart';
import 'package:gramovy/Profile/profile_page.dart';
import 'package:gramovy/json/songs_json.dart';
import 'package:gramovy/home/album_page.dart';
import 'package:gramovy/home/music_detail_page.dart';
import "package:page_transition/page_transition.dart";
import 'package:gramovy/sidebar/NavBar.dart';

class HomePage extends StatefulWidget {
  final dynamic song;
  const HomePage({Key? key, this.song}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 4.0,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: List.generate(songs.length - 5, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                          alignment: Alignment.bottomCenter,
                          child: AlbumPage(
                            song: songs[index],
                          ),
                          type: PageTransitionType.scale));
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 300,
                            height: 180,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(songs[index]['img']),
                                fit: BoxFit.cover),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(16)),
                          ),
                          SizedBox(
                            height: 20,
                          ),                         
                        ],
                      ),
                    ),
                  );
                })
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Recent',
                  style: TextStyle(
                    fontSize: 25, 
                    fontWeight: FontWeight.w600, 
                    color: Colors.white),
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
                children: List.generate(5, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MusicDetailPage(
                            title: songs[index]['title'],
                            description: songs[index]['description'],
                            img: songs[index]['img'],
                            songUrl: songs[index]['song_url'],
                          ))
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
                                textAlign: TextAlign.start,
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
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Recommendation',
                  style: TextStyle(
                    fontSize: 25, 
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),
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
                      padding: const EdgeInsets.only(right: 25),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MusicDetailPage(
                            title: songs[index]['title'],
                            description: songs[index]['description'],
                            img: songs[index]['img'],
                            songUrl: songs[index]['song_url'],
                          ))
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
                                textAlign: TextAlign.start,
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
