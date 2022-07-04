import 'package:flutter/material.dart';
import 'package:gramovy/home/music_detail_page.dart';
import 'package:page_transition/page_transition.dart';

class AlbumPage extends StatefulWidget {
  final dynamic song;

  const AlbumPage({Key? key, this.song}) : super(key: key);
  @override
  _AlbumPageState createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    List songAlbums = widget.song['songs'];
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: size.width,
                height: 410,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.song['img']),
                    fit: BoxFit.cover
                )),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: List.generate(songAlbums.length, (index) {
                  return Padding(
                    padding: 
                      const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                   child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                              context,
                              PageTransition(
                                alignment: Alignment.bottomCenter,
                                child: MusicDetailPage(
                                  title: widget.song['title'],
                                  description: widget.song['description'],
                                  img: widget.song['img'],
                                  songUrl: widget.song['song_url'],
                                ),
                                type: PageTransitionType.scale));
                      },
                      child: Row(
                        children: [
                          Container(
                            width: (size.width - 60) * 0.77,
                            height: 50,
                            child: Text(
                              "${index + 1} " + songAlbums[index]['title'],
                              style: TextStyle(color: Colors.white),
                              ),
                          ),
                          Container(
                            width: (size.width - 60) * 0.23,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  songAlbums[index]['duration'],
                                  style: TextStyle(color: Colors.grey, fontSize: 14),
                                ),
                                Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.withOpacity(0.8),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                      size: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ); 
                })) 
            ],
          ),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}